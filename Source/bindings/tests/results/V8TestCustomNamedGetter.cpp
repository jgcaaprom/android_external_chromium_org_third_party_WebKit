/*
    This file is part of the Blink open source project.
    This file has been auto-generated by CodeGeneratorV8.pm. DO NOT MODIFY!

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
    Boston, MA 02111-1307, USA.
*/

#include "config.h"
#include "V8TestCustomNamedGetter.h"

#include "RuntimeEnabledFeatures.h"
#include "bindings/v8/ScriptController.h"
#include "bindings/v8/V8Binding.h"
#include "bindings/v8/V8DOMWrapper.h"
#include "core/dom/ContextFeatures.h"
#include "core/dom/ExceptionCode.h"
#include "core/page/Frame.h"
#include "wtf/UnusedParam.h"

#if ENABLE(BINDING_INTEGRITY)
#if defined(OS_WIN)
#pragma warning(disable: 4483)
extern "C" { extern void (*const __identifier("??_7TestCustomNamedGetter@WebCore@@6B@")[])(); }
#else
extern "C" { extern void* _ZTVN7WebCore21TestCustomNamedGetterE[]; }
#endif
#endif // ENABLE(BINDING_INTEGRITY)

namespace WebCore {

#if ENABLE(BINDING_INTEGRITY)
// This checks if a DOM object that is about to be wrapped is valid.
// Specifically, it checks that a vtable of the DOM object is equal to
// a vtable of an expected class.
// Due to a dangling pointer, the DOM object you are wrapping might be
// already freed or realloced. If freed, the check will fail because
// a free list pointer should be stored at the head of the DOM object.
// If realloced, the check will fail because the vtable of the DOM object
// differs from the expected vtable (unless the same class of DOM object
// is realloced on the slot).
inline void checkTypeOrDieTrying(TestCustomNamedGetter* object)
{
    void* actualVTablePointer = *(reinterpret_cast<void**>(object));
#if defined(OS_WIN)
    void* expectedVTablePointer = reinterpret_cast<void*>(__identifier("??_7TestCustomNamedGetter@WebCore@@6B@"));
#else
    void* expectedVTablePointer = &_ZTVN7WebCore21TestCustomNamedGetterE[2];
#endif
    if (actualVTablePointer != expectedVTablePointer)
        CRASH();
}
#endif // ENABLE(BINDING_INTEGRITY)

#if defined(OS_WIN)
// In ScriptWrappable, the use of extern function prototypes inside templated static methods has an issue on windows.
// These prototypes do not pick up the surrounding namespace, so drop out of WebCore as a workaround.
} // namespace WebCore
using WebCore::ScriptWrappable;
using WebCore::V8TestCustomNamedGetter;
using WebCore::TestCustomNamedGetter;
#endif
void initializeScriptWrappableForInterface(TestCustomNamedGetter* object)
{
    if (ScriptWrappable::wrapperCanBeStoredInObject(object))
        ScriptWrappable::setTypeInfoInObject(object, &V8TestCustomNamedGetter::info);
}
#if defined(OS_WIN)
namespace WebCore {
#endif
WrapperTypeInfo V8TestCustomNamedGetter::info = { V8TestCustomNamedGetter::GetTemplate, V8TestCustomNamedGetter::derefObject, 0, 0, 0, V8TestCustomNamedGetter::installPerContextPrototypeProperties, 0, WrapperTypeObjectPrototype };

namespace TestCustomNamedGetterV8Internal {

template <typename T> void V8_USE(T) { }

static v8::Handle<v8::Value> anotherFunctionMethod(const v8::Arguments& args)
{
    if (args.Length() < 1)
        return throwNotEnoughArgumentsError(args.GetIsolate());
    TestCustomNamedGetter* imp = V8TestCustomNamedGetter::toNative(args.Holder());
    V8TRYCATCH_FOR_V8STRINGRESOURCE(V8StringResource<>, str, args[0]);
    imp->anotherFunction(str);
    return v8Undefined();
}

static v8::Handle<v8::Value> anotherFunctionMethodCallback(const v8::Arguments& args)
{
    return TestCustomNamedGetterV8Internal::anotherFunctionMethod(args);
}

} // namespace TestCustomNamedGetterV8Internal

static const V8DOMConfiguration::BatchedMethod V8TestCustomNamedGetterMethods[] = {
    {"anotherFunction", TestCustomNamedGetterV8Internal::anotherFunctionMethodCallback, 0, 1},
};

static v8::Persistent<v8::FunctionTemplate> ConfigureV8TestCustomNamedGetterTemplate(v8::Persistent<v8::FunctionTemplate> desc, v8::Isolate* isolate, WrapperWorldType currentWorldType)
{
    desc->ReadOnlyPrototype();

    v8::Local<v8::Signature> defaultSignature;
    defaultSignature = V8DOMConfiguration::configureTemplate(desc, "TestCustomNamedGetter", v8::Persistent<v8::FunctionTemplate>(), V8TestCustomNamedGetter::internalFieldCount,
        0, 0,
        V8TestCustomNamedGetterMethods, WTF_ARRAY_LENGTH(V8TestCustomNamedGetterMethods), isolate, currentWorldType);
    UNUSED_PARAM(defaultSignature); // In some cases, it will not be used.
    v8::Local<v8::ObjectTemplate> instance = desc->InstanceTemplate();
    v8::Local<v8::ObjectTemplate> proto = desc->PrototypeTemplate();
    UNUSED_PARAM(instance); // In some cases, it will not be used.
    UNUSED_PARAM(proto); // In some cases, it will not be used.
    desc->InstanceTemplate()->SetNamedPropertyHandler(V8TestCustomNamedGetter::namedPropertyGetter, 0, 0, 0, 0);

    // Custom toString template
    desc->Set(v8::String::NewSymbol("toString"), V8PerIsolateData::current()->toStringTemplate());
    return desc;
}

v8::Persistent<v8::FunctionTemplate> V8TestCustomNamedGetter::GetTemplate(v8::Isolate* isolate, WrapperWorldType currentWorldType)
{
    V8PerIsolateData* data = V8PerIsolateData::from(isolate);
    V8PerIsolateData::TemplateMap::iterator result = data->templateMap(currentWorldType).find(&info);
    if (result != data->templateMap(currentWorldType).end())
        return result->value;

    v8::HandleScope handleScope;
    v8::Persistent<v8::FunctionTemplate> templ =
        ConfigureV8TestCustomNamedGetterTemplate(data->rawTemplate(&info, currentWorldType), isolate, currentWorldType);
    data->templateMap(currentWorldType).add(&info, templ);
    return templ;
}

bool V8TestCustomNamedGetter::HasInstance(v8::Handle<v8::Value> value, v8::Isolate* isolate, WrapperWorldType currentWorldType)
{
    return V8PerIsolateData::from(isolate)->hasInstance(&info, value, currentWorldType);
}

bool V8TestCustomNamedGetter::HasInstanceInAnyWorld(v8::Handle<v8::Value> value, v8::Isolate* isolate)
{
    return V8PerIsolateData::from(isolate)->hasInstance(&info, value, MainWorld)
        || V8PerIsolateData::from(isolate)->hasInstance(&info, value, IsolatedWorld)
        || V8PerIsolateData::from(isolate)->hasInstance(&info, value, WorkerWorld);
}


v8::Handle<v8::Object> V8TestCustomNamedGetter::createWrapper(PassRefPtr<TestCustomNamedGetter> impl, v8::Handle<v8::Object> creationContext, v8::Isolate* isolate)
{
    ASSERT(impl.get());
    ASSERT(DOMDataStore::getWrapper(impl.get(), isolate).IsEmpty());

#if ENABLE(BINDING_INTEGRITY)
    checkTypeOrDieTrying(impl.get());
#endif

    v8::Handle<v8::Object> wrapper = V8DOMWrapper::createWrapper(creationContext, &info, impl.get(), isolate);
    if (UNLIKELY(wrapper.IsEmpty()))
        return wrapper;

    installPerContextProperties(wrapper, impl.get(), isolate);
    V8DOMWrapper::associateObjectWithWrapper(impl, &info, wrapper, isolate, hasDependentLifetime ? WrapperConfiguration::Dependent : WrapperConfiguration::Independent);
    return wrapper;
}
void V8TestCustomNamedGetter::derefObject(void* object)
{
    static_cast<TestCustomNamedGetter*>(object)->deref();
}

} // namespace WebCore
