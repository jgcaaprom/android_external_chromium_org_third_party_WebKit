# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_WebKit_Source_core_webcore_rendering_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_core_webcore_prerequisites_gyp,,,$(GYP_VAR_PREFIX))/webcore_prerequisites.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/WebKit/Source/core/rendering/AbstractInlineTextBox.cpp \
	third_party/WebKit/Source/core/rendering/AutoTableLayout.cpp \
	third_party/WebKit/Source/core/rendering/BidiRunForLine.cpp \
	third_party/WebKit/Source/core/rendering/ClipRect.cpp \
	third_party/WebKit/Source/core/rendering/CounterNode.cpp \
	third_party/WebKit/Source/core/rendering/EllipsisBox.cpp \
	third_party/WebKit/Source/core/rendering/FilterEffectRenderer.cpp \
	third_party/WebKit/Source/core/rendering/FixedTableLayout.cpp \
	third_party/WebKit/Source/core/rendering/FloatingObjects.cpp \
	third_party/WebKit/Source/core/rendering/FlowThreadController.cpp \
	third_party/WebKit/Source/core/rendering/GraphicsContextAnnotator.cpp \
	third_party/WebKit/Source/core/rendering/HitTestLocation.cpp \
	third_party/WebKit/Source/core/rendering/HitTestResult.cpp \
	third_party/WebKit/Source/core/rendering/HitTestingTransformState.cpp \
	third_party/WebKit/Source/core/rendering/ImageQualityController.cpp \
	third_party/WebKit/Source/core/rendering/InlineBox.cpp \
	third_party/WebKit/Source/core/rendering/InlineFlowBox.cpp \
	third_party/WebKit/Source/core/rendering/InlineTextBox.cpp \
	third_party/WebKit/Source/core/rendering/LayoutState.cpp \
	third_party/WebKit/Source/core/rendering/OrderIterator.cpp \
	third_party/WebKit/Source/core/rendering/PaintInvalidationState.cpp \
	third_party/WebKit/Source/core/rendering/PointerEventsHitRules.cpp \
	third_party/WebKit/Source/core/rendering/RenderApplet.cpp \
	third_party/WebKit/Source/core/rendering/RenderBR.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlock.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlockFlow.cpp \
	third_party/WebKit/Source/core/rendering/RenderBlockLineLayout.cpp \
	third_party/WebKit/Source/core/rendering/RenderBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderBoxModelObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderButton.cpp \
	third_party/WebKit/Source/core/rendering/RenderCombineText.cpp \
	third_party/WebKit/Source/core/rendering/RenderCounter.cpp \
	third_party/WebKit/Source/core/rendering/RenderDeprecatedFlexibleBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderDetailsMarker.cpp \
	third_party/WebKit/Source/core/rendering/RenderEmbeddedObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderFieldset.cpp \
	third_party/WebKit/Source/core/rendering/RenderFileUploadControl.cpp \
	third_party/WebKit/Source/core/rendering/RenderFlexibleBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderFrame.cpp \
	third_party/WebKit/Source/core/rendering/RenderFrameSet.cpp \
	third_party/WebKit/Source/core/rendering/RenderFullScreen.cpp \
	third_party/WebKit/Source/core/rendering/RenderGeometryMap.cpp \
	third_party/WebKit/Source/core/rendering/RenderGrid.cpp \
	third_party/WebKit/Source/core/rendering/RenderHTMLCanvas.cpp \
	third_party/WebKit/Source/core/rendering/RenderIFrame.cpp \
	third_party/WebKit/Source/core/rendering/RenderImage.cpp \
	third_party/WebKit/Source/core/rendering/RenderImageResource.cpp \
	third_party/WebKit/Source/core/rendering/RenderImageResourceStyleImage.cpp \
	third_party/WebKit/Source/core/rendering/RenderInline.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayer.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerClipper.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerFilterInfo.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerModelObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerReflectionInfo.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerScrollableArea.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerStackingNode.cpp \
	third_party/WebKit/Source/core/rendering/RenderLayerStackingNodeIterator.cpp \
	third_party/WebKit/Source/core/rendering/RenderLineBoxList.cpp \
	third_party/WebKit/Source/core/rendering/RenderListBox.cpp \
	third_party/WebKit/Source/core/rendering/RenderListItem.cpp \
	third_party/WebKit/Source/core/rendering/RenderListMarker.cpp \
	third_party/WebKit/Source/core/rendering/RenderMarquee.cpp \
	third_party/WebKit/Source/core/rendering/RenderMedia.cpp \
	third_party/WebKit/Source/core/rendering/RenderMediaControlElements.cpp \
	third_party/WebKit/Source/core/rendering/RenderMediaControls.cpp \
	third_party/WebKit/Source/core/rendering/RenderMenuList.cpp \
	third_party/WebKit/Source/core/rendering/RenderMeter.cpp \
	third_party/WebKit/Source/core/rendering/RenderMultiColumnFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderMultiColumnSet.cpp \
	third_party/WebKit/Source/core/rendering/RenderObject.cpp \
	third_party/WebKit/Source/core/rendering/RenderObjectChildList.cpp \
	third_party/WebKit/Source/core/rendering/RenderPagedFlowThread.cpp \
	third_party/WebKit/Source/core/rendering/RenderPart.cpp \
	third_party/WebKit/Source/core/rendering/RenderProgress.cpp \
	third_party/WebKit/Source/core/rendering/RenderQuote.cpp \
	third_party/WebKit/Source/core/rendering/RenderRegion.cpp \
	third_party/WebKit/Source/core/rendering/RenderReplaced.cpp \
	third_party/WebKit/Source/core/rendering/RenderReplica.cpp \
	third_party/WebKit/Source/core/rendering/RenderRuby.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyBase.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyRun.cpp \
	third_party/WebKit/Source/core/rendering/RenderRubyText.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbar.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbarPart.cpp \
	third_party/WebKit/Source/core/rendering/RenderScrollbarTheme.cpp \
	third_party/WebKit/Source/core/rendering/RenderSearchField.cpp \
	third_party/WebKit/Source/core/rendering/RenderSlider.cpp \
	third_party/WebKit/Source/core/rendering/RenderSliderContainer.cpp \
	third_party/WebKit/Source/core/rendering/RenderSliderThumb.cpp \
	third_party/WebKit/Source/core/rendering/RenderTable.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCaption.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCell.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableCol.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableRow.cpp \
	third_party/WebKit/Source/core/rendering/RenderTableSection.cpp \
	third_party/WebKit/Source/core/rendering/RenderText.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControl.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControlMultiLine.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextControlSingleLine.cpp \
	third_party/WebKit/Source/core/rendering/RenderTextFragment.cpp \
	third_party/WebKit/Source/core/rendering/RenderTheme.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumAndroid.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumDefault.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumFontProvider.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumFontProviderLinux.cpp \
	third_party/WebKit/Source/core/rendering/RenderThemeChromiumSkia.cpp \
	third_party/WebKit/Source/core/rendering/RenderTreeAsText.cpp \
	third_party/WebKit/Source/core/rendering/RenderVTTCue.cpp \
	third_party/WebKit/Source/core/rendering/RenderVideo.cpp \
	third_party/WebKit/Source/core/rendering/RenderView.cpp \
	third_party/WebKit/Source/core/rendering/RenderWidget.cpp \
	third_party/WebKit/Source/core/rendering/RenderWordBreak.cpp \
	third_party/WebKit/Source/core/rendering/RootInlineBox.cpp \
	third_party/WebKit/Source/core/rendering/ScrollAlignment.cpp \
	third_party/WebKit/Source/core/rendering/SubtreeLayoutScope.cpp \
	third_party/WebKit/Source/core/rendering/TextAutosizer.cpp \
	third_party/WebKit/Source/core/rendering/TextPainter.cpp \
	third_party/WebKit/Source/core/rendering/TextRunConstructor.cpp \
	third_party/WebKit/Source/core/rendering/break_lines.cpp \
	third_party/WebKit/Source/core/rendering/compositing/CompositedLayerMapping.cpp \
	third_party/WebKit/Source/core/rendering/compositing/CompositingInputsUpdater.cpp \
	third_party/WebKit/Source/core/rendering/compositing/CompositingLayerAssigner.cpp \
	third_party/WebKit/Source/core/rendering/compositing/CompositingReasonFinder.cpp \
	third_party/WebKit/Source/core/rendering/compositing/CompositingRequirementsUpdater.cpp \
	third_party/WebKit/Source/core/rendering/compositing/GraphicsLayerTreeBuilder.cpp \
	third_party/WebKit/Source/core/rendering/compositing/GraphicsLayerUpdater.cpp \
	third_party/WebKit/Source/core/rendering/compositing/RenderLayerCompositor.cpp \
	third_party/WebKit/Source/core/rendering/line/BreakingContext.cpp \
	third_party/WebKit/Source/core/rendering/line/LineBreaker.cpp \
	third_party/WebKit/Source/core/rendering/line/LineWidth.cpp \
	third_party/WebKit/Source/core/rendering/line/TrailingObjects.cpp \
	third_party/WebKit/Source/core/rendering/shapes/BoxShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/PolygonShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/RasterShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/RectangleShape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/Shape.cpp \
	third_party/WebKit/Source/core/rendering/shapes/ShapeOutsideInfo.cpp \
	third_party/WebKit/Source/core/rendering/style/AppliedTextDecoration.cpp \
	third_party/WebKit/Source/core/rendering/style/BasicShapes.cpp \
	third_party/WebKit/Source/core/rendering/style/BorderEdge.cpp \
	third_party/WebKit/Source/core/rendering/style/ContentData.cpp \
	third_party/WebKit/Source/core/rendering/style/CounterDirectives.cpp \
	third_party/WebKit/Source/core/rendering/style/FillLayer.cpp \
	third_party/WebKit/Source/core/rendering/style/GridResolvedPosition.cpp \
	third_party/WebKit/Source/core/rendering/style/KeyframeList.cpp \
	third_party/WebKit/Source/core/rendering/style/NinePieceImage.cpp \
	third_party/WebKit/Source/core/rendering/style/QuotesData.cpp \
	third_party/WebKit/Source/core/rendering/style/RenderStyle.cpp \
	third_party/WebKit/Source/core/rendering/style/ShadowData.cpp \
	third_party/WebKit/Source/core/rendering/style/ShadowList.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleBackgroundData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleDeprecatedFlexibleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFetchedImage.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFetchedImageSet.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFilterData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleFlexibleBoxData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGeneratedImage.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGridData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleGridItemData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleMarqueeData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleMultiColData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleRareInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleRareNonInheritedData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleSurroundData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleTransformData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleVisualData.cpp \
	third_party/WebKit/Source/core/rendering/style/StyleWillChangeData.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-w -O3 \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="https://proxy-dev.googlezip.net:443/"' \
	'-DDATA_REDUCTION_DEV_FALLBACK_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DBLINK_IMPLEMENTATION=1' \
	'-DINSIDE_BLINK' \
	'-DENABLE_SVG_FONTS=1' \
	'-DWTF_USE_CONCATENATED_IMPULSE_RESPONSES=1' \
	'-DWTF_USE_WEBAUDIO_OPENMAX_DL_FFT=1' \
	'-DENABLE_WEB_AUDIO=1' \
	'-DENABLE_OPENTYPE_VERTICAL=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DLIBXML_STATIC' \
	'-DLIBXSLT_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(gyp_shared_intermediate_dir)/blink \
	$(LOCAL_PATH)/third_party/openmax_dl \
	$(LOCAL_PATH)/third_party/angle/include \
	$(PWD)/external/icu/icu4c/source/common \
	$(PWD)/external/icu/icu4c/source/i18n \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/libxml/linux/include \
	$(LOCAL_PATH)/third_party/libxml/src/include \
	$(LOCAL_PATH)/third_party/libxslt \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/sqlite \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-c++0x-compat \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-w -O3 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DDATA_REDUCTION_FALLBACK_HOST="http://compress.googlezip.net:80/"' \
	'-DDATA_REDUCTION_DEV_HOST="https://proxy-dev.googlezip.net:443/"' \
	'-DDATA_REDUCTION_DEV_FALLBACK_HOST="http://proxy-dev.googlezip.net:80/"' \
	'-DSPDY_PROXY_AUTH_ORIGIN="https://proxy.googlezip.net:443/"' \
	'-DDATA_REDUCTION_PROXY_PROBE_URL="http://check.googlezip.net/connect"' \
	'-DDATA_REDUCTION_PROXY_WARMUP_URL="http://www.gstatic.com/generate_204"' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DBLINK_IMPLEMENTATION=1' \
	'-DINSIDE_BLINK' \
	'-DENABLE_SVG_FONTS=1' \
	'-DWTF_USE_CONCATENATED_IMPULSE_RESPONSES=1' \
	'-DWTF_USE_WEBAUDIO_OPENMAX_DL_FFT=1' \
	'-DENABLE_WEB_AUDIO=1' \
	'-DENABLE_OPENTYPE_VERTICAL=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_DEFERRED_CANVAS_USES_FACTORIES=1' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DLIBXML_STATIC' \
	'-DLIBXSLT_STATIC' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(gyp_shared_intermediate_dir)/blink \
	$(LOCAL_PATH)/third_party/openmax_dl \
	$(LOCAL_PATH)/third_party/angle/include \
	$(PWD)/external/icu/icu4c/source/common \
	$(PWD)/external/icu/icu4c/source/i18n \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/libxml/linux/include \
	$(LOCAL_PATH)/third_party/libxml/src/include \
	$(LOCAL_PATH)/third_party/libxslt \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/sqlite \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-c++0x-compat \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_core_webcore_rendering_gyp

# Alias gyp target name.
.PHONY: webcore_rendering
webcore_rendering: third_party_WebKit_Source_core_webcore_rendering_gyp

include $(BUILD_STATIC_LIBRARY)
