# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_WebKit_Source_modules_modules_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_config_gyp)/config.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_core_core_gyp_webcore_gyp)/webcore.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_WebKit_Source_core_core_gyp_webcore_derived_gyp)/third_party_WebKit_Source_core_core_gyp_webcore_derived_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_gyp)/skia_skia_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/WebKit/Source/modules/battery/BatteryController.cpp \
	third_party/WebKit/Source/modules/battery/BatteryManager.cpp \
	third_party/WebKit/Source/modules/battery/BatteryStatus.cpp \
	third_party/WebKit/Source/modules/battery/NavigatorBattery.cpp \
	third_party/WebKit/Source/modules/device_orientation/DeviceAcceleration.cpp \
	third_party/WebKit/Source/modules/device_orientation/DeviceMotionController.cpp \
	third_party/WebKit/Source/modules/device_orientation/DeviceMotionData.cpp \
	third_party/WebKit/Source/modules/device_orientation/DeviceMotionEvent.cpp \
	third_party/WebKit/Source/modules/device_orientation/DeviceRotationRate.cpp \
	third_party/WebKit/Source/modules/donottrack/NavigatorDoNotTrack.cpp \
	third_party/WebKit/Source/modules/filesystem/DOMFilePath.cpp \
	third_party/WebKit/Source/modules/filesystem/DOMFileSystem.cpp \
	third_party/WebKit/Source/modules/filesystem/DOMFileSystemBase.cpp \
	third_party/WebKit/Source/modules/filesystem/DOMFileSystemSync.cpp \
	third_party/WebKit/Source/modules/filesystem/DOMWindowFileSystem.cpp \
	third_party/WebKit/Source/modules/filesystem/DataTransferItemFileSystem.cpp \
	third_party/WebKit/Source/modules/filesystem/DirectoryEntry.cpp \
	third_party/WebKit/Source/modules/filesystem/DirectoryEntrySync.cpp \
	third_party/WebKit/Source/modules/filesystem/DirectoryReader.cpp \
	third_party/WebKit/Source/modules/filesystem/DirectoryReaderSync.cpp \
	third_party/WebKit/Source/modules/filesystem/DraggedIsolatedFileSystem.cpp \
	third_party/WebKit/Source/modules/filesystem/Entry.cpp \
	third_party/WebKit/Source/modules/filesystem/EntryArray.cpp \
	third_party/WebKit/Source/modules/filesystem/EntryArraySync.cpp \
	third_party/WebKit/Source/modules/filesystem/EntryBase.cpp \
	third_party/WebKit/Source/modules/filesystem/EntrySync.cpp \
	third_party/WebKit/Source/modules/filesystem/FileEntry.cpp \
	third_party/WebKit/Source/modules/filesystem/FileEntrySync.cpp \
	third_party/WebKit/Source/modules/filesystem/FileSystemCallbacks.cpp \
	third_party/WebKit/Source/modules/filesystem/FileWriter.cpp \
	third_party/WebKit/Source/modules/filesystem/FileWriterBase.cpp \
	third_party/WebKit/Source/modules/filesystem/FileWriterSync.cpp \
	third_party/WebKit/Source/modules/filesystem/HTMLInputElementFileSystem.cpp \
	third_party/WebKit/Source/modules/filesystem/WorkerContextFileSystem.cpp \
	third_party/WebKit/Source/modules/gamepad/Gamepad.cpp \
	third_party/WebKit/Source/modules/gamepad/GamepadList.cpp \
	third_party/WebKit/Source/modules/gamepad/NavigatorGamepad.cpp \
	third_party/WebKit/Source/modules/geolocation/Coordinates.cpp \
	third_party/WebKit/Source/modules/geolocation/Geolocation.cpp \
	third_party/WebKit/Source/modules/geolocation/GeolocationController.cpp \
	third_party/WebKit/Source/modules/geolocation/NavigatorGeolocation.cpp \
	third_party/WebKit/Source/modules/indexeddb/DOMWindowIndexedDatabase.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBAny.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBBackingStore.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBCursor.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBCursorBackendImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBCursorWithValue.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBDatabase.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBDatabaseBackendImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBDatabaseCallbacksImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBDatabaseException.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBEventDispatcher.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBFactory.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBFactoryBackendImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBIndex.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBKey.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBKeyPath.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBKeyRange.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBLevelDBCoding.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBObjectStore.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBObjectStoreBackendImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBOpenDBRequest.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBPendingTransactionMonitor.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBRequest.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBTransaction.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBTransactionBackendImpl.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBTransactionCoordinator.cpp \
	third_party/WebKit/Source/modules/indexeddb/IDBVersionChangeEvent.cpp \
	third_party/WebKit/Source/modules/indexeddb/PageGroupIndexedDatabase.cpp \
	third_party/WebKit/Source/modules/indexeddb/WorkerContextIndexedDatabase.cpp \
	third_party/WebKit/Source/modules/indexeddb/chromium/IDBFactoryBackendInterfaceChromium.cpp \
	third_party/WebKit/Source/modules/mediasource/MediaSource.cpp \
	third_party/WebKit/Source/modules/mediasource/MediaSourceRegistry.cpp \
	third_party/WebKit/Source/modules/mediasource/SourceBuffer.cpp \
	third_party/WebKit/Source/modules/mediasource/SourceBufferList.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaConstraintsImpl.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaStream.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaStreamEvent.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaStreamRegistry.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaStreamTrack.cpp \
	third_party/WebKit/Source/modules/mediastream/MediaStreamTrackEvent.cpp \
	third_party/WebKit/Source/modules/mediastream/NavigatorMediaStream.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCDTMFSender.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCDTMFToneChangeEvent.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCDataChannel.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCDataChannelEvent.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCIceCandidate.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCIceCandidateEvent.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCPeerConnection.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCSessionDescription.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCSessionDescriptionRequestImpl.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCStatsReport.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCStatsRequestImpl.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCStatsResponse.cpp \
	third_party/WebKit/Source/modules/mediastream/RTCVoidRequestImpl.cpp \
	third_party/WebKit/Source/modules/mediastream/UserMediaController.cpp \
	third_party/WebKit/Source/modules/mediastream/UserMediaRequest.cpp \
	third_party/WebKit/Source/modules/navigatorcontentutils/NavigatorContentUtils.cpp \
	third_party/WebKit/Source/modules/notifications/DOMWindowNotifications.cpp \
	third_party/WebKit/Source/modules/notifications/Notification.cpp \
	third_party/WebKit/Source/modules/notifications/NotificationCenter.cpp \
	third_party/WebKit/Source/modules/notifications/NotificationController.cpp \
	third_party/WebKit/Source/modules/notifications/WorkerContextNotifications.cpp \
	third_party/WebKit/Source/modules/quota/DOMWindowQuota.cpp \
	third_party/WebKit/Source/modules/quota/NavigatorStorageQuota.cpp \
	third_party/WebKit/Source/modules/quota/StorageInfo.cpp \
	third_party/WebKit/Source/modules/quota/StorageErrorCallback.cpp \
	third_party/WebKit/Source/modules/quota/StorageQuota.cpp \
	third_party/WebKit/Source/modules/quota/WorkerNavigatorStorageQuota.cpp \
	third_party/WebKit/Source/modules/speech/DOMWindowSpeechSynthesis.cpp \
	third_party/WebKit/Source/modules/speech/SpeechGrammar.cpp \
	third_party/WebKit/Source/modules/speech/SpeechGrammarList.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognition.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionAlternative.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionController.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionError.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionEvent.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionResult.cpp \
	third_party/WebKit/Source/modules/speech/SpeechRecognitionResultList.cpp \
	third_party/WebKit/Source/modules/speech/SpeechSynthesis.cpp \
	third_party/WebKit/Source/modules/speech/SpeechSynthesisEvent.cpp \
	third_party/WebKit/Source/modules/speech/SpeechSynthesisUtterance.cpp \
	third_party/WebKit/Source/modules/speech/SpeechSynthesisVoice.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioBasicInspectorNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioBasicProcessorNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioBuffer.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioBufferSourceNode.cpp \
	third_party/WebKit/Source/modules/webaudio/ChannelMergerNode.cpp \
	third_party/WebKit/Source/modules/webaudio/ChannelSplitterNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioContext.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioDestinationNode.cpp \
	third_party/WebKit/Source/modules/webaudio/GainNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioListener.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioNodeInput.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioNodeOutput.cpp \
	third_party/WebKit/Source/modules/webaudio/PannerNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioParam.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioParamTimeline.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioProcessingEvent.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioScheduledSourceNode.cpp \
	third_party/WebKit/Source/modules/webaudio/AudioSummingJunction.cpp \
	third_party/WebKit/Source/modules/webaudio/AsyncAudioDecoder.cpp \
	third_party/WebKit/Source/modules/webaudio/BiquadDSPKernel.cpp \
	third_party/WebKit/Source/modules/webaudio/BiquadFilterNode.cpp \
	third_party/WebKit/Source/modules/webaudio/BiquadProcessor.cpp \
	third_party/WebKit/Source/modules/webaudio/ConvolverNode.cpp \
	third_party/WebKit/Source/modules/webaudio/DefaultAudioDestinationNode.cpp \
	third_party/WebKit/Source/modules/webaudio/DelayDSPKernel.cpp \
	third_party/WebKit/Source/modules/webaudio/DelayNode.cpp \
	third_party/WebKit/Source/modules/webaudio/DelayProcessor.cpp \
	third_party/WebKit/Source/modules/webaudio/DynamicsCompressorNode.cpp \
	third_party/WebKit/Source/modules/webaudio/ScriptProcessorNode.cpp \
	third_party/WebKit/Source/modules/webaudio/MediaElementAudioSourceNode.cpp \
	third_party/WebKit/Source/modules/webaudio/MediaStreamAudioDestinationNode.cpp \
	third_party/WebKit/Source/modules/webaudio/MediaStreamAudioSourceNode.cpp \
	third_party/WebKit/Source/modules/webaudio/OfflineAudioCompletionEvent.cpp \
	third_party/WebKit/Source/modules/webaudio/OfflineAudioContext.cpp \
	third_party/WebKit/Source/modules/webaudio/OfflineAudioDestinationNode.cpp \
	third_party/WebKit/Source/modules/webaudio/OscillatorNode.cpp \
	third_party/WebKit/Source/modules/webaudio/RealtimeAnalyser.cpp \
	third_party/WebKit/Source/modules/webaudio/AnalyserNode.cpp \
	third_party/WebKit/Source/modules/webaudio/WaveShaperDSPKernel.cpp \
	third_party/WebKit/Source/modules/webaudio/WaveShaperNode.cpp \
	third_party/WebKit/Source/modules/webaudio/WaveShaperProcessor.cpp \
	third_party/WebKit/Source/modules/webaudio/WaveTable.cpp \
	third_party/WebKit/Source/modules/webdatabase/ChangeVersionWrapper.cpp \
	third_party/WebKit/Source/modules/webdatabase/Database.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseAuthorizer.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseBackend.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseBackendBase.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseBackendContext.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseBackendSync.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseBase.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseContext.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseManager.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseServer.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseSync.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseTask.cpp \
	third_party/WebKit/Source/modules/webdatabase/DatabaseThread.cpp \
	third_party/WebKit/Source/modules/webdatabase/DOMWindowWebDatabase.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLException.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLResultSet.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLResultSetRowList.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLStatement.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLStatementBackend.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLStatementSync.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransaction.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransactionBackend.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransactionBackendSync.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransactionCoordinator.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransactionStateMachine.cpp \
	third_party/WebKit/Source/modules/webdatabase/SQLTransactionSync.cpp \
	third_party/WebKit/Source/modules/webdatabase/WorkerContextWebDatabase.cpp \
	third_party/WebKit/Source/modules/webdatabase/chromium/DatabaseTrackerChromium.cpp \
	third_party/WebKit/Source/modules/webdatabase/chromium/QuotaTracker.cpp \
	third_party/WebKit/Source/modules/webdatabase/chromium/SQLTransactionClientChromium.cpp \
	third_party/WebKit/Source/modules/webmidi/MIDIErrorCallback.cpp \
	third_party/WebKit/Source/modules/webmidi/MIDIInput.cpp \
	third_party/WebKit/Source/modules/webmidi/MIDIPort.cpp \
	third_party/WebKit/Source/modules/websockets/MainThreadWebSocketChannel.cpp \
	third_party/WebKit/Source/modules/websockets/ThreadableWebSocketChannelClientWrapper.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocket.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketChannel.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketDeflateFramer.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketDeflater.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketExtensionDispatcher.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketExtensionParser.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketFrame.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketHandshake.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketHandshakeRequest.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketHandshakeResponse.cpp \
	third_party/WebKit/Source/modules/websockets/WebSocketPerMessageDeflate.cpp \
	third_party/WebKit/Source/modules/websockets/WorkerThreadableWebSocketChannel.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
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
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_CFLAGS_C :=

MY_DEFS := \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-DWEBKIT_IMPLEMENTATION=1' \
	'-DENABLE_3D_PLUGIN=1' \
	'-DENABLE_BATTERY_STATUS=0' \
	'-DENABLE_CANVAS_USES_MAILBOX=0' \
	'-DENABLE_CSS3_TEXT=0' \
	'-DENABLE_CSS_DEVICE_ADAPTATION=0' \
	'-DENABLE_CSS_EXCLUSIONS=1' \
	'-DENABLE_CSS_REGIONS=1' \
	'-DENABLE_CUSTOM_SCHEME_HANDLER=0' \
	'-DENABLE_ENCRYPTED_MEDIA=1' \
	'-DENABLE_RESOLUTION_MEDIA_QUERY=0' \
	'-DENABLE_SVG=1' \
	'-DENABLE_SVG_FONTS=1' \
	'-DENABLE_TOUCH_ICON_LOADING=1' \
	'-DENABLE_WEBGL=1' \
	'-DENABLE_XHR_TIMEOUT=0' \
	'-DWTF_USE_BUILTIN_UTF8_CODEC=1' \
	'-DWTF_USE_WEBKIT_IMAGE_DECODERS=1' \
	'-DWTF_USE_CONCATENATED_IMPULSE_RESPONSES=1' \
	'-DENABLE_CALENDAR_PICKER=0' \
	'-DENABLE_DATALIST_ELEMENT=0' \
	'-DENABLE_FAST_MOBILE_SCROLLING=1' \
	'-DENABLE_INPUT_SPEECH=0' \
	'-DENABLE_INPUT_TYPE_COLOR=0' \
	'-DENABLE_LEGACY_NOTIFICATIONS=0' \
	'-DENABLE_MEDIA_CAPTURE=1' \
	'-DENABLE_NOTIFICATIONS=0' \
	'-DENABLE_ORIENTATION_EVENTS=1' \
	'-DENABLE_PAGE_POPUP=0' \
	'-DENABLE_PRINTING=0' \
	'-DENABLE_NAVIGATOR_CONTENT_UTILS=0' \
	'-DWTF_USE_NATIVE_FULLSCREEN_VIDEO=1' \
	'-DENABLE_8BIT_TEXTRUN=1' \
	'-DENABLE_BINDING_INTEGRITY=1' \
	'-DENABLE_OPENTYPE_VERTICAL=1' \
	'-DWTF_USE_HARFBUZZ=1' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DSK_BUILD_NO_IMAGE_ENCODE' \
	'-DSK_DEFERRED_CANVAS_USES_GPIPE=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DGR_AGGRESSIVE_SHADER_OPTS=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_BUILD_FOR_ANDROID_NDK' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(gyp_shared_intermediate_dir)/webkit \
	$(gyp_shared_intermediate_dir)/webkit/bindings \
	$(LOCAL_PATH)/third_party/WebKit/Source/Platform/chromium \
	$(GYP_ABS_ANDROID_TOP_DIR)/external/icu4c/common \
	$(GYP_ABS_ANDROID_TOP_DIR)/external/icu4c/i18n \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/config \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/gpu/gl \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/v8/include \
	$(GYP_ABS_ANDROID_TOP_DIR)/frameworks/wilhelm/include \
	$(GYP_ABS_ANDROID_TOP_DIR)/bionic \
	$(GYP_ABS_ANDROID_TOP_DIR)/external/stlport/stlport

LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES)

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-c++0x-compat \
	-Wno-deprecated \
	-Wno-abi \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor

### Rules for final target.

LOCAL_LDFLAGS := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,--gc-sections \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_STATIC_LIBRARIES := \
	third_party_WebKit_Source_core_core_gyp_webcore_derived_gyp \
	skia_skia_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_modules_modules_gyp

# Alias gyp target name.
.PHONY: modules
modules: third_party_WebKit_Source_modules_modules_gyp

include $(BUILD_STATIC_LIBRARY)
