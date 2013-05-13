/*
 * Copyright (C) 1999 Lars Knoll (knoll@kde.org)
 *           (C) 2004-2005 Allan Sandfeld Jensen (kde@carewolf.com)
 * Copyright (C) 2006, 2007 Nicholas Shanks (webkit@nickshanks.com)
 * Copyright (C) 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 Apple Inc. All rights reserved.
 * Copyright (C) 2007 Alexey Proskuryakov <ap@webkit.org>
 * Copyright (C) 2007, 2008 Eric Seidel <eric@webkit.org>
 * Copyright (C) 2008, 2009 Torch Mobile Inc. All rights reserved. (http://www.torchmobile.com/)
 * Copyright (c) 2011, Code Aurora Forum. All rights reserved.
 * Copyright (C) Research In Motion Limited 2011. All rights reserved.
 * Copyright (C) 2012 Google Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

#include "config.h"
#include "core/css/resolver/FilterOperationResolver.h"

#include "core/css/CSSParser.h"
#include "core/css/CSSPrimitiveValueMappings.h"
#include "core/css/ShadowValue.h"
#include "core/css/WebKitCSSFilterValue.h"
#include "core/css/WebKitCSSMixFunctionValue.h"
#include "core/css/WebKitCSSShaderValue.h"
#include "core/css/resolver/TransformBuilder.h"
#include "core/platform/graphics/filters/custom/CustomFilterArrayParameter.h"
#include "core/platform/graphics/filters/custom/CustomFilterConstants.h"
#include "core/platform/graphics/filters/custom/CustomFilterNumberParameter.h"
#include "core/platform/graphics/filters/custom/CustomFilterOperation.h"
#include "core/platform/graphics/filters/custom/CustomFilterParameter.h"
#include "core/platform/graphics/filters/custom/CustomFilterProgramInfo.h"
#include "core/platform/graphics/filters/custom/CustomFilterTransformParameter.h"
#include "core/rendering/style/StyleCustomFilterProgram.h"
#include "core/rendering/style/StyleCustomFilterProgramCache.h"
#include "core/rendering/style/StyleShader.h"

#if ENABLE(SVG)
#include "core/svg/SVGURIReference.h"
#endif

namespace WebCore {

static Length convertToFloatLength(CSSPrimitiveValue* primitiveValue, RenderStyle* style, RenderStyle* rootStyle, double multiplier)
{
    return primitiveValue ? primitiveValue->convertToLength<FixedFloatConversion | PercentConversion | CalculatedConversion | FractionConversion | ViewportPercentageConversion>(style, rootStyle, multiplier) : Length(Undefined);
}


static FilterOperation::OperationType filterOperationForType(WebKitCSSFilterValue::FilterOperationType type)
{
    switch (type) {
    case WebKitCSSFilterValue::ReferenceFilterOperation:
        return FilterOperation::REFERENCE;
    case WebKitCSSFilterValue::GrayscaleFilterOperation:
        return FilterOperation::GRAYSCALE;
    case WebKitCSSFilterValue::SepiaFilterOperation:
        return FilterOperation::SEPIA;
    case WebKitCSSFilterValue::SaturateFilterOperation:
        return FilterOperation::SATURATE;
    case WebKitCSSFilterValue::HueRotateFilterOperation:
        return FilterOperation::HUE_ROTATE;
    case WebKitCSSFilterValue::InvertFilterOperation:
        return FilterOperation::INVERT;
    case WebKitCSSFilterValue::OpacityFilterOperation:
        return FilterOperation::OPACITY;
    case WebKitCSSFilterValue::BrightnessFilterOperation:
        return FilterOperation::BRIGHTNESS;
    case WebKitCSSFilterValue::ContrastFilterOperation:
        return FilterOperation::CONTRAST;
    case WebKitCSSFilterValue::BlurFilterOperation:
        return FilterOperation::BLUR;
    case WebKitCSSFilterValue::DropShadowFilterOperation:
        return FilterOperation::DROP_SHADOW;
    case WebKitCSSFilterValue::CustomFilterOperation:
        return FilterOperation::CUSTOM;
    case WebKitCSSFilterValue::UnknownFilterOperation:
        return FilterOperation::NONE;
    }
    return FilterOperation::NONE;
}

static bool sortParametersByNameComparator(const RefPtr<CustomFilterParameter>& a, const RefPtr<CustomFilterParameter>& b)
{
    return codePointCompareLessThan(a->name(), b->name());
}

static StyleShader* cachedOrPendingStyleShaderFromValue(WebKitCSSShaderValue* value, StyleResolverState& state)
{
    StyleShader* shader = value->cachedOrPendingShader();
    if (shader && shader->isPendingShader())
        state.setHasPendingShaders(true);
    return shader;
}

static StyleShader* styleShader(CSSValue* value, StyleResolverState& state)
{
    if (value->isWebKitCSSShaderValue())
        return cachedOrPendingStyleShaderFromValue(static_cast<WebKitCSSShaderValue*>(value), state);
    return 0;
}

static PassRefPtr<CustomFilterParameter> parseCustomFilterArrayParameter(const String& name, CSSValueList* values)
{
    RefPtr<CustomFilterArrayParameter> arrayParameter = CustomFilterArrayParameter::create(name);
    for (unsigned i = 0, length = values->length(); i < length; ++i) {
        CSSValue* value = values->itemWithoutBoundsCheck(i);
        if (!value->isPrimitiveValue())
            return 0;
        CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(value);
        if (primitiveValue->primitiveType() != CSSPrimitiveValue::CSS_NUMBER)
            return 0;
        arrayParameter->addValue(primitiveValue->getDoubleValue());
    }
    return arrayParameter.release();
}

static PassRefPtr<CustomFilterParameter> parseCustomFilterNumberParameter(const String& name, CSSValueList* values)
{
    RefPtr<CustomFilterNumberParameter> numberParameter = CustomFilterNumberParameter::create(name);
    for (unsigned i = 0; i < values->length(); ++i) {
        CSSValue* value = values->itemWithoutBoundsCheck(i);
        if (!value->isPrimitiveValue())
            return 0;
        CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(value);
        if (primitiveValue->primitiveType() != CSSPrimitiveValue::CSS_NUMBER)
            return 0;
        numberParameter->addValue(primitiveValue->getDoubleValue());
    }
    return numberParameter.release();
}

static PassRefPtr<CustomFilterParameter> parseCustomFilterTransformParameter(const String& name, CSSValueList* values, StyleResolverState& state)
{
    RefPtr<CustomFilterTransformParameter> transformParameter = CustomFilterTransformParameter::create(name);
    TransformOperations operations;
    TransformBuilder::createTransformOperations(values, state.style(), state.rootElementStyle(), operations);
    transformParameter->setOperations(operations);
    return transformParameter.release();
}

static PassRefPtr<CustomFilterParameter> parseCustomFilterParameter(const String& name, CSSValue* parameterValue, StyleResolverState& state)
{
    // FIXME: Implement other parameters types parsing.
    // booleans: https://bugs.webkit.org/show_bug.cgi?id=76438
    // textures: https://bugs.webkit.org/show_bug.cgi?id=71442
    // mat2, mat3, mat4: https://bugs.webkit.org/show_bug.cgi?id=71444
    // Number parameters are wrapped inside a CSSValueList and all
    // the other functions values inherit from CSSValueList.
    if (!parameterValue->isValueList())
        return 0;

    CSSValueList* values = static_cast<CSSValueList*>(parameterValue);
    if (!values->length())
        return 0;

    if (parameterValue->isWebKitCSSArrayFunctionValue())
        return parseCustomFilterArrayParameter(name, values);

    // If the first value of the list is a transform function,
    // then we could safely assume that all the remaining items
    // are transforms. parseCustomFilterTransformParameter will
    // return 0 if that assumption is incorrect.
    if (values->itemWithoutBoundsCheck(0)->isWebKitCSSTransformValue())
        return parseCustomFilterTransformParameter(name, values, state);

    // We can have only arrays of booleans or numbers, so use the first value to choose between those two.
    // We need up to 4 values (all booleans or all numbers).
    if (!values->itemWithoutBoundsCheck(0)->isPrimitiveValue() || values->length() > 4)
        return 0;

    CSSPrimitiveValue* firstPrimitiveValue = static_cast<CSSPrimitiveValue*>(values->itemWithoutBoundsCheck(0));
    if (firstPrimitiveValue->primitiveType() == CSSPrimitiveValue::CSS_NUMBER)
        return parseCustomFilterNumberParameter(name, values);

    // FIXME: Implement the boolean array parameter here.
    // https://bugs.webkit.org/show_bug.cgi?id=76438

    return 0;
}

static bool parseCustomFilterParameterList(CSSValue* parametersValue, CustomFilterParameterList& parameterList, StyleResolverState& state)
{
    HashSet<String> knownParameterNames;
    CSSValueListIterator parameterIterator(parametersValue);
    for (; parameterIterator.hasMore(); parameterIterator.advance()) {
        if (!parameterIterator.value()->isValueList())
            return false;
        CSSValueListIterator iterator(parameterIterator.value());
        if (!iterator.isPrimitiveValue())
            return false;
        CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(iterator.value());
        if (primitiveValue->primitiveType() != CSSPrimitiveValue::CSS_STRING)
            return false;

        String name = primitiveValue->getStringValue();
        // Do not allow duplicate parameter names.
        if (knownParameterNames.contains(name))
            return false;
        knownParameterNames.add(name);

        iterator.advance();

        if (!iterator.hasMore())
            return false;

        RefPtr<CustomFilterParameter> parameter = parseCustomFilterParameter(name, iterator.value(), state);
        if (!parameter)
            return false;
        parameterList.append(parameter.release());
    }

    // Make sure we sort the parameters before passing them down to the CustomFilterOperation.
    std::sort(parameterList.begin(), parameterList.end(), sortParametersByNameComparator);

    return true;
}

static PassRefPtr<CustomFilterOperation> createCustomFilterOperationWithAtRuleReferenceSyntax(WebKitCSSFilterValue* filterValue)
{
    // FIXME: Implement style resolution for the custom filter at-rule reference syntax.
    UNUSED_PARAM(filterValue);
    return 0;
}

static PassRefPtr<CustomFilterProgram> lookupCustomFilterProgram(WebKitCSSShaderValue* vertexShader, WebKitCSSShaderValue* fragmentShader,
    CustomFilterProgramType programType, const CustomFilterProgramMixSettings& mixSettings, CustomFilterMeshType meshType,
    StyleCustomFilterProgramCache* customFilterProgramCache, StyleResolverState& state)
{
    CachedResourceLoader* cachedResourceLoader = state.document()->cachedResourceLoader();
    KURL vertexShaderURL = vertexShader ? vertexShader->completeURL(cachedResourceLoader) : KURL();
    KURL fragmentShaderURL = fragmentShader ? fragmentShader->completeURL(cachedResourceLoader) : KURL();
    RefPtr<StyleCustomFilterProgram> program;
    if (customFilterProgramCache)
        program = customFilterProgramCache->lookup(CustomFilterProgramInfo(vertexShaderURL, fragmentShaderURL, programType, mixSettings, meshType));
    if (!program) {
        // Create a new StyleCustomFilterProgram that will be resolved during the loadPendingShaders and added to the cache.
        program = StyleCustomFilterProgram::create(vertexShaderURL, vertexShader ? styleShader(vertexShader, state) : 0,
            fragmentShaderURL, fragmentShader ? styleShader(fragmentShader, state) : 0, programType, mixSettings, meshType);
        // FIXME
    }
    return program.release();
}

static PassRefPtr<CustomFilterOperation> createCustomFilterOperationWithInlineSyntax(WebKitCSSFilterValue* filterValue, StyleCustomFilterProgramCache* customFilterProgramCache, StyleResolverState& state)
{
    CSSValue* shadersValue = filterValue->itemWithoutBoundsCheck(0);
    ASSERT_WITH_SECURITY_IMPLICATION(shadersValue->isValueList());
    CSSValueList* shadersList = static_cast<CSSValueList*>(shadersValue);

    unsigned shadersListLength = shadersList->length();
    ASSERT(shadersListLength);

    WebKitCSSShaderValue* vertexShader = toWebKitCSSShaderValue(shadersList->itemWithoutBoundsCheck(0));
    WebKitCSSShaderValue* fragmentShader = 0;
    CustomFilterProgramType programType = PROGRAM_TYPE_BLENDS_ELEMENT_TEXTURE;
    CustomFilterProgramMixSettings mixSettings;

    if (shadersListLength > 1) {
        CSSValue* fragmentShaderOrMixFunction = shadersList->itemWithoutBoundsCheck(1);
        if (fragmentShaderOrMixFunction->isWebKitCSSMixFunctionValue()) {
            WebKitCSSMixFunctionValue* mixFunction = static_cast<WebKitCSSMixFunctionValue*>(fragmentShaderOrMixFunction);
            CSSValueListIterator iterator(mixFunction);

            ASSERT(mixFunction->length());
            fragmentShader = toWebKitCSSShaderValue(iterator.value());
            iterator.advance();

            ASSERT(mixFunction->length() <= 3);
            while (iterator.hasMore()) {
                CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(iterator.value());
                if (CSSParser::isBlendMode(primitiveValue->getIdent()))
                    mixSettings.blendMode = *primitiveValue;
                else if (CSSParser::isCompositeOperator(primitiveValue->getIdent()))
                    mixSettings.compositeOperator = *primitiveValue;
                else
                    ASSERT_NOT_REACHED();
                iterator.advance();
            }
        } else {
            programType = PROGRAM_TYPE_NO_ELEMENT_TEXTURE;
            fragmentShader = toWebKitCSSShaderValue(fragmentShaderOrMixFunction);
        }
    }

    if (!vertexShader && !fragmentShader)
        return 0;

    unsigned meshRows = 1;
    unsigned meshColumns = 1;
    CustomFilterMeshType meshType = MeshTypeAttached;

    CSSValue* parametersValue = 0;

    if (filterValue->length() > 1) {
        CSSValueListIterator iterator(filterValue->itemWithoutBoundsCheck(1));

        // The second value might be the mesh box or the list of parameters:
        // If it starts with a number or any of the mesh-box identifiers it is
        // the mesh-box list, if not it means it is the parameters list.

        if (iterator.hasMore() && iterator.isPrimitiveValue()) {
            CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(iterator.value());
            if (primitiveValue->isNumber()) {
                // If only one integer value is specified, it will set both
                // the rows and the columns.
                meshColumns = meshRows = primitiveValue->getIntValue();
                iterator.advance();

                // Try to match another number for the rows.
                if (iterator.hasMore() && iterator.isPrimitiveValue()) {
                    CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(iterator.value());
                    if (primitiveValue->isNumber()) {
                        meshRows = primitiveValue->getIntValue();
                        iterator.advance();
                    }
                }
            }
        }

        if (iterator.hasMore() && iterator.isPrimitiveValue()) {
            CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(iterator.value());
            if (primitiveValue->getIdent() == CSSValueDetached) {
                meshType = MeshTypeDetached;
                iterator.advance();
            }
        }

        if (!iterator.index()) {
            // If no value was consumed from the mesh value, then it is just a parameter list, meaning that we end up
            // having just two CSSListValues: list of shaders and list of parameters.
            ASSERT(filterValue->length() == 2);
            parametersValue = filterValue->itemWithoutBoundsCheck(1);
        }
    }

    if (filterValue->length() > 2 && !parametersValue)
        parametersValue = filterValue->itemWithoutBoundsCheck(2);

    CustomFilterParameterList parameterList;
    if (parametersValue && !parseCustomFilterParameterList(parametersValue, parameterList, state))
        return 0;

    RefPtr<CustomFilterProgram> program = lookupCustomFilterProgram(vertexShader, fragmentShader, programType, mixSettings, meshType, customFilterProgramCache, state);
    return CustomFilterOperation::create(program.release(), parameterList, meshRows, meshColumns, meshType);
}

static PassRefPtr<CustomFilterOperation> createCustomFilterOperation(WebKitCSSFilterValue* filterValue, StyleCustomFilterProgramCache* customFilterProgramCache, StyleResolverState& state)
{
    ASSERT(filterValue->length());
    bool isAtRuleReferenceSyntax = filterValue->itemWithoutBoundsCheck(0)->isPrimitiveValue();
    return isAtRuleReferenceSyntax ? createCustomFilterOperationWithAtRuleReferenceSyntax(filterValue) : createCustomFilterOperationWithInlineSyntax(filterValue, customFilterProgramCache, state);
}


bool FilterOperationResolver::createFilterOperations(CSSValue* inValue, RenderStyle* style, RenderStyle* rootStyle, FilterOperations& outOperations, StyleCustomFilterProgramCache* customFilterProgramCache, StyleResolverState& state)
{
    ASSERT(outOperations.isEmpty());

    if (!inValue)
        return false;

    if (inValue->isPrimitiveValue()) {
        CSSPrimitiveValue* primitiveValue = static_cast<CSSPrimitiveValue*>(inValue);
        if (primitiveValue->getIdent() == CSSValueNone)
            return true;
    }

    if (!inValue->isValueList())
        return false;

    float zoomFactor = style ? style->effectiveZoom() : 1;
    FilterOperations operations;
    for (CSSValueListIterator i = inValue; i.hasMore(); i.advance()) {
        CSSValue* currValue = i.value();
        if (!currValue->isWebKitCSSFilterValue())
            continue;

        WebKitCSSFilterValue* filterValue = static_cast<WebKitCSSFilterValue*>(i.value());
        FilterOperation::OperationType operationType = filterOperationForType(filterValue->operationType());

        if (operationType == FilterOperation::VALIDATED_CUSTOM) {
            // ValidatedCustomFilterOperation is not supposed to end up in the RenderStyle.
            ASSERT_NOT_REACHED();
            continue;
        }
        if (operationType == FilterOperation::CUSTOM) {
            RefPtr<CustomFilterOperation> operation = createCustomFilterOperation(filterValue, customFilterProgramCache, state);
            if (!operation)
                return false;

            operations.operations().append(operation);
            continue;
        }
        if (operationType == FilterOperation::REFERENCE) {
#if ENABLE(SVG)
            if (filterValue->length() != 1)
                continue;
            CSSValue* argument = filterValue->itemWithoutBoundsCheck(0);

            if (!argument->isWebKitCSSSVGDocumentValue())
                continue;

            WebKitCSSSVGDocumentValue* svgDocumentValue = static_cast<WebKitCSSSVGDocumentValue*>(argument);
            KURL url = state.document()->completeURL(svgDocumentValue->url());

            RefPtr<ReferenceFilterOperation> operation = ReferenceFilterOperation::create(svgDocumentValue->url(), url.fragmentIdentifier(), operationType);
            if (SVGURIReference::isExternalURIReference(svgDocumentValue->url(), state.document())) {
                if (!svgDocumentValue->loadRequested())
                    state.pendingSVGDocuments().set(operation.get(), svgDocumentValue);
                else if (svgDocumentValue->cachedSVGDocument())
                    operation->setCachedSVGDocumentReference(adoptPtr(new CachedSVGDocumentReference(svgDocumentValue->cachedSVGDocument())));
            }
            operations.operations().append(operation);
#endif
            continue;
        }

        // Check that all parameters are primitive values, with the
        // exception of drop shadow which has a ShadowValue parameter.
        if (operationType != FilterOperation::DROP_SHADOW) {
            bool haveNonPrimitiveValue = false;
            for (unsigned j = 0; j < filterValue->length(); ++j) {
                if (!filterValue->itemWithoutBoundsCheck(j)->isPrimitiveValue()) {
                    haveNonPrimitiveValue = true;
                    break;
                }
            }
            if (haveNonPrimitiveValue)
                continue;
        }

        CSSPrimitiveValue* firstValue = filterValue->length() ? static_cast<CSSPrimitiveValue*>(filterValue->itemWithoutBoundsCheck(0)) : 0;
        switch (filterValue->operationType()) {
        case WebKitCSSFilterValue::GrayscaleFilterOperation:
        case WebKitCSSFilterValue::SepiaFilterOperation:
        case WebKitCSSFilterValue::SaturateFilterOperation: {
            double amount = 1;
            if (filterValue->length() == 1) {
                amount = firstValue->getDoubleValue();
                if (firstValue->isPercentage())
                    amount /= 100;
            }

            operations.operations().append(BasicColorMatrixFilterOperation::create(amount, operationType));
            break;
        }
        case WebKitCSSFilterValue::HueRotateFilterOperation: {
            double angle = 0;
            if (filterValue->length() == 1)
                angle = firstValue->computeDegrees();

            operations.operations().append(BasicColorMatrixFilterOperation::create(angle, operationType));
            break;
        }
        case WebKitCSSFilterValue::InvertFilterOperation:
        case WebKitCSSFilterValue::BrightnessFilterOperation:
        case WebKitCSSFilterValue::ContrastFilterOperation:
        case WebKitCSSFilterValue::OpacityFilterOperation: {
            double amount = (filterValue->operationType() == WebKitCSSFilterValue::BrightnessFilterOperation) ? 0 : 1;
            if (filterValue->length() == 1) {
                amount = firstValue->getDoubleValue();
                if (firstValue->isPercentage())
                    amount /= 100;
            }

            operations.operations().append(BasicComponentTransferFilterOperation::create(amount, operationType));
            break;
        }
        case WebKitCSSFilterValue::BlurFilterOperation: {
            Length stdDeviation = Length(0, Fixed);
            if (filterValue->length() >= 1)
                stdDeviation = convertToFloatLength(firstValue, style, rootStyle, zoomFactor);
            if (stdDeviation.isUndefined())
                return false;

            operations.operations().append(BlurFilterOperation::create(stdDeviation, operationType));
            break;
        }
        case WebKitCSSFilterValue::DropShadowFilterOperation: {
            if (filterValue->length() != 1)
                return false;

            CSSValue* cssValue = filterValue->itemWithoutBoundsCheck(0);
            if (!cssValue->isShadowValue())
                continue;

            ShadowValue* item = static_cast<ShadowValue*>(cssValue);
            IntPoint location(item->x->computeLength<int>(style, rootStyle, zoomFactor), item->y->computeLength<int>(style, rootStyle, zoomFactor));
            int blur = item->blur ? item->blur->computeLength<int>(style, rootStyle, zoomFactor) : 0;
            Color color;
            if (item->color)
                color = state.colorFromPrimitiveValue(item->color.get());

            operations.operations().append(DropShadowFilterOperation::create(location, blur, color.isValid() ? color : Color::transparent, operationType));
            break;
        }
        case WebKitCSSFilterValue::UnknownFilterOperation:
        default:
            ASSERT_NOT_REACHED();
            break;
        }
    }

    outOperations = operations;
    return true;
}

} // namespace WebCore
