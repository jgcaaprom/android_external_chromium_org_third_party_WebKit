# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_WebKit_Source_web_blink_web_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_config_gyp,,,$(GYP_VAR_PREFIX))/config.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_core_webcore_gyp,,,$(GYP_VAR_PREFIX))/webcore.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_WebKit_Source_core_webcore_generated_gyp,,,$(GYP_VAR_PREFIX))/third_party_WebKit_Source_core_webcore_generated_gyp.a \
	$(call intermediates-dir-for,GYP,skia_skia_gyp,,,$(GYP_VAR_PREFIX))/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_icu_icuuc_gyp,,,$(GYP_VAR_PREFIX))/icuuc.stamp \
	$(call intermediates-dir-for,GYP,third_party_npapi_npapi_gyp,,,$(GYP_VAR_PREFIX))/npapi.stamp \
	$(call intermediates-dir-for,GYP,v8_tools_gyp_v8_gyp,,,$(GYP_VAR_PREFIX))/v8.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/WebKit/Source/web/AssertMatchingEnums.cpp \
	third_party/WebKit/Source/web/AssociatedURLLoader.cpp \
	third_party/WebKit/Source/web/BackForwardClientImpl.cpp \
	third_party/WebKit/Source/web/ChromeClientImpl.cpp \
	third_party/WebKit/Source/web/ColorChooserPopupUIController.cpp \
	third_party/WebKit/Source/web/ColorChooserUIController.cpp \
	third_party/WebKit/Source/web/CompositionUnderlineVectorBuilder.cpp \
	third_party/WebKit/Source/web/ContextFeaturesClientImpl.cpp \
	third_party/WebKit/Source/web/ContextMenuClientImpl.cpp \
	third_party/WebKit/Source/web/DatabaseClientImpl.cpp \
	third_party/WebKit/Source/web/DateTimeChooserImpl.cpp \
	third_party/WebKit/Source/web/DragClientImpl.cpp \
	third_party/WebKit/Source/web/EditorClientImpl.cpp \
	third_party/WebKit/Source/web/ExternalDateTimeChooser.cpp \
	third_party/WebKit/Source/web/ExternalPopupMenu.cpp \
	third_party/WebKit/Source/web/FindInPageCoordinates.cpp \
	third_party/WebKit/Source/web/FrameLoaderClientImpl.cpp \
	third_party/WebKit/Source/web/FullscreenController.cpp \
	third_party/WebKit/Source/web/GeolocationClientProxy.cpp \
	third_party/WebKit/Source/web/GraphicsLayerFactoryChromium.cpp \
	third_party/WebKit/Source/web/IndexedDBClientImpl.cpp \
	third_party/WebKit/Source/web/InspectorClientImpl.cpp \
	third_party/WebKit/Source/web/LinkHighlight.cpp \
	third_party/WebKit/Source/web/LocalFileSystemClient.cpp \
	third_party/WebKit/Source/web/MediaKeysClientImpl.cpp \
	third_party/WebKit/Source/web/MIDIClientProxy.cpp \
	third_party/WebKit/Source/web/NavigatorContentUtilsClientImpl.cpp \
	third_party/WebKit/Source/web/NotificationPermissionClientImpl.cpp \
	third_party/WebKit/Source/web/NotificationPresenterImpl.cpp \
	third_party/WebKit/Source/web/OpenedFrameTracker.cpp \
	third_party/WebKit/Source/web/PageOverlay.cpp \
	third_party/WebKit/Source/web/PageOverlayList.cpp \
	third_party/WebKit/Source/web/PageScaleConstraintsSet.cpp \
	third_party/WebKit/Source/web/PageWidgetDelegate.cpp \
	third_party/WebKit/Source/web/PopupContainer.cpp \
	third_party/WebKit/Source/web/PopupListBox.cpp \
	third_party/WebKit/Source/web/PopupMenuChromium.cpp \
	third_party/WebKit/Source/web/PrerendererClientImpl.cpp \
	third_party/WebKit/Source/web/RemoteFrameClient.cpp \
	third_party/WebKit/Source/web/ScrollbarGroup.cpp \
	third_party/WebKit/Source/web/ServiceWorkerGlobalScopeClientImpl.cpp \
	third_party/WebKit/Source/web/ServiceWorkerGlobalScopeProxy.cpp \
	third_party/WebKit/Source/web/SharedWorkerRepositoryClientImpl.cpp \
	third_party/WebKit/Source/web/SpeechRecognitionClientProxy.cpp \
	third_party/WebKit/Source/web/SpellCheckerClientImpl.cpp \
	third_party/WebKit/Source/web/StorageClientImpl.cpp \
	third_party/WebKit/Source/web/StorageQuotaClientImpl.cpp \
	third_party/WebKit/Source/web/TextFinder.cpp \
	third_party/WebKit/Source/web/UserMediaClientImpl.cpp \
	third_party/WebKit/Source/web/ValidationMessageClientImpl.cpp \
	third_party/WebKit/Source/web/ViewportAnchor.cpp \
	third_party/WebKit/Source/web/WebAXObject.cpp \
	third_party/WebKit/Source/web/WebArrayBufferConverter.cpp \
	third_party/WebKit/Source/web/WebArrayBufferView.cpp \
	third_party/WebKit/Source/web/WebBindings.cpp \
	third_party/WebKit/Source/web/WebBlob.cpp \
	third_party/WebKit/Source/web/WebCache.cpp \
	third_party/WebKit/Source/web/WebCachedURLRequest.cpp \
	third_party/WebKit/Source/web/WebColorName.cpp \
	third_party/WebKit/Source/web/WebColorSuggestion.cpp \
	third_party/WebKit/Source/web/WebCryptoNormalize.cpp \
	third_party/WebKit/Source/web/WebCustomElement.cpp \
	third_party/WebKit/Source/web/WebDOMActivityLogger.cpp \
	third_party/WebKit/Source/web/WebDOMCustomEvent.cpp \
	third_party/WebKit/Source/web/WebDOMError.cpp \
	third_party/WebKit/Source/web/WebDOMEvent.cpp \
	third_party/WebKit/Source/web/WebDOMFileSystem.cpp \
	third_party/WebKit/Source/web/WebDOMMediaStreamTrack.cpp \
	third_party/WebKit/Source/web/WebDOMMessageEvent.cpp \
	third_party/WebKit/Source/web/WebDOMMouseEvent.cpp \
	third_party/WebKit/Source/web/WebDOMProgressEvent.cpp \
	third_party/WebKit/Source/web/WebDOMResourceProgressEvent.cpp \
	third_party/WebKit/Source/web/WebDateTimeSuggestion.cpp \
	third_party/WebKit/Source/web/WebDataSourceImpl.cpp \
	third_party/WebKit/Source/web/WebDatabase.cpp \
	third_party/WebKit/Source/web/WebDevToolsAgentImpl.cpp \
	third_party/WebKit/Source/web/WebDevToolsFrontendImpl.cpp \
	third_party/WebKit/Source/web/WebDocument.cpp \
	third_party/WebKit/Source/web/WebDocumentType.cpp \
	third_party/WebKit/Source/web/WebDragData.cpp \
	third_party/WebKit/Source/web/WebElement.cpp \
	third_party/WebKit/Source/web/WebElementCollection.cpp \
	third_party/WebKit/Source/web/WebEmbeddedWorkerImpl.cpp \
	third_party/WebKit/Source/web/WebEntities.cpp \
	third_party/WebKit/Source/web/WebFileChooserCompletionImpl.cpp \
	third_party/WebKit/Source/web/WebFontDescription.cpp \
	third_party/WebKit/Source/web/WebFontImpl.cpp \
	third_party/WebKit/Source/web/WebFormControlElement.cpp \
	third_party/WebKit/Source/web/WebFormElement.cpp \
	third_party/WebKit/Source/web/WebFrame.cpp \
	third_party/WebKit/Source/web/WebGeolocationController.cpp \
	third_party/WebKit/Source/web/WebGeolocationError.cpp \
	third_party/WebKit/Source/web/WebGeolocationPermissionRequest.cpp \
	third_party/WebKit/Source/web/WebGeolocationPermissionRequestManager.cpp \
	third_party/WebKit/Source/web/WebGeolocationPosition.cpp \
	third_party/WebKit/Source/web/WebGlyphCache.cpp \
	third_party/WebKit/Source/web/WebHeap.cpp \
	third_party/WebKit/Source/web/WebHelperPluginImpl.cpp \
	third_party/WebKit/Source/web/WebHistoryItem.cpp \
	third_party/WebKit/Source/web/WebHitTestResult.cpp \
	third_party/WebKit/Source/web/WebIDBDatabaseError.cpp \
	third_party/WebKit/Source/web/WebIDBKey.cpp \
	third_party/WebKit/Source/web/WebIDBKeyPath.cpp \
	third_party/WebKit/Source/web/WebIDBKeyRange.cpp \
	third_party/WebKit/Source/web/WebIDBMetadata.cpp \
	third_party/WebKit/Source/web/WebImageCache.cpp \
	third_party/WebKit/Source/web/WebImageDecoder.cpp \
	third_party/WebKit/Source/web/WebInputElement.cpp \
	third_party/WebKit/Source/web/WebInputEvent.cpp \
	third_party/WebKit/Source/web/WebInputEventConversion.cpp \
	third_party/WebKit/Source/web/WebKit.cpp \
	third_party/WebKit/Source/web/WebLabelElement.cpp \
	third_party/WebKit/Source/web/WebLeakDetector.cpp \
	third_party/WebKit/Source/web/WebLocalFrameImpl.cpp \
	third_party/WebKit/Source/web/WebMIDIClientMock.cpp \
	third_party/WebKit/Source/web/WebMIDIPermissionRequest.cpp \
	third_party/WebKit/Source/web/WebMediaDevicesRequest.cpp \
	third_party/WebKit/Source/web/WebMediaPlayerClientImpl.cpp \
	third_party/WebKit/Source/web/WebMediaStreamRegistry.cpp \
	third_party/WebKit/Source/web/WebNetworkStateNotifier.cpp \
	third_party/WebKit/Source/web/WebNode.cpp \
	third_party/WebKit/Source/web/WebNodeList.cpp \
	third_party/WebKit/Source/web/WebNotification.cpp \
	third_party/WebKit/Source/web/WebOptionElement.cpp \
	third_party/WebKit/Source/web/WebPagePopupImpl.cpp \
	third_party/WebKit/Source/web/WebPageSerializer.cpp \
	third_party/WebKit/Source/web/WebPageSerializerImpl.cpp \
	third_party/WebKit/Source/web/WebPerformance.cpp \
	third_party/WebKit/Source/web/WebPluginContainerImpl.cpp \
	third_party/WebKit/Source/web/WebPluginDocument.cpp \
	third_party/WebKit/Source/web/WebPluginLoadObserver.cpp \
	third_party/WebKit/Source/web/WebPluginScrollbarImpl.cpp \
	third_party/WebKit/Source/web/WebPopupMenuImpl.cpp \
	third_party/WebKit/Source/web/WebRange.cpp \
	third_party/WebKit/Source/web/WebRemoteFrameImpl.cpp \
	third_party/WebKit/Source/web/WebRuntimeFeatures.cpp \
	third_party/WebKit/Source/web/WebScopedMicrotaskSuppression.cpp \
	third_party/WebKit/Source/web/WebScopedUserGesture.cpp \
	third_party/WebKit/Source/web/WebScopedWindowFocusAllowedIndicator.cpp \
	third_party/WebKit/Source/web/WebScriptBindings.cpp \
	third_party/WebKit/Source/web/WebScriptController.cpp \
	third_party/WebKit/Source/web/WebScrollbarThemePainter.cpp \
	third_party/WebKit/Source/web/WebSearchableFormData.cpp \
	third_party/WebKit/Source/web/WebSecurityOrigin.cpp \
	third_party/WebKit/Source/web/WebSecurityPolicy.cpp \
	third_party/WebKit/Source/web/WebSelectElement.cpp \
	third_party/WebKit/Source/web/WebSelector.cpp \
	third_party/WebKit/Source/web/WebSerializedScriptValue.cpp \
	third_party/WebKit/Source/web/WebSettingsImpl.cpp \
	third_party/WebKit/Source/web/WebSharedWorkerImpl.cpp \
	third_party/WebKit/Source/web/WebSocket.cpp \
	third_party/WebKit/Source/web/WebSocketImpl.cpp \
	third_party/WebKit/Source/web/WebSpeechGrammar.cpp \
	third_party/WebKit/Source/web/WebSpeechRecognitionHandle.cpp \
	third_party/WebKit/Source/web/WebSpeechRecognitionResult.cpp \
	third_party/WebKit/Source/web/WebStorageEventDispatcherImpl.cpp \
	third_party/WebKit/Source/web/WebSurroundingText.cpp \
	third_party/WebKit/Source/web/WebTextAreaElement.cpp \
	third_party/WebKit/Source/web/WebTextCheckingCompletionImpl.cpp \
	third_party/WebKit/Source/web/WebTextCheckingResult.cpp \
	third_party/WebKit/Source/web/WebTextInputInfo.cpp \
	third_party/WebKit/Source/web/WebTextRun.cpp \
	third_party/WebKit/Source/web/WebUserGestureIndicator.cpp \
	third_party/WebKit/Source/web/WebUserGestureToken.cpp \
	third_party/WebKit/Source/web/WebUserMediaRequest.cpp \
	third_party/WebKit/Source/web/WebViewImpl.cpp \
	third_party/WebKit/Source/web/WebWorkerRunLoop.cpp \
	third_party/WebKit/Source/web/WorkerGlobalScopeProxyProviderImpl.cpp \
	third_party/WebKit/Source/web/WorkerPermissionClient.cpp \
	third_party/WebKit/Source/web/linux/WebFontRendering.cpp \
	third_party/WebKit/Source/web/painting/ContinuousPainter.cpp \
	third_party/WebKit/Source/web/painting/PaintAggregator.cpp


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
	-fno-tree-sra \
	-fno-caller-saves \
	-Wno-psabi \
	-fno-partial-inlining \
	-fno-early-inlining \
	-fno-tree-copy-prop \
	-fno-tree-loop-optimize \
	-fno-move-loop-invariants \
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
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
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
	$(LOCAL_PATH)/third_party/angle/include \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/WebKit \
	$(gyp_shared_intermediate_dir)/blink \
	$(LOCAL_PATH)/third_party/openmax_dl \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(PWD)/external/icu/icu4c/source/common \
	$(PWD)/external/icu/icu4c/source/i18n \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-Wno-c++0x-compat \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-c++0x-compat \
	-Wno-abi \
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
	-fno-tree-sra \
	-fno-caller-saves \
	-Wno-psabi \
	-fno-partial-inlining \
	-fno-early-inlining \
	-fno-tree-copy-prop \
	-fno-tree-loop-optimize \
	-fno-move-loop-invariants \
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
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
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
	$(LOCAL_PATH)/third_party/angle/include \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/WebKit \
	$(gyp_shared_intermediate_dir)/blink \
	$(LOCAL_PATH)/third_party/openmax_dl \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(PWD)/external/icu/icu4c/source/common \
	$(PWD)/external/icu/icu4c/source/i18n \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-Wno-c++0x-compat \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-c++0x-compat \
	-Wno-abi \
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
gyp_all_modules: third_party_WebKit_Source_web_blink_web_gyp

# Alias gyp target name.
.PHONY: blink_web
blink_web: third_party_WebKit_Source_web_blink_web_gyp

include $(BUILD_STATIC_LIBRARY)
