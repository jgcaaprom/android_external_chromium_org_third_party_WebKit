# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_Source_bindings_core_v8_bindings_core_impl_generated_gyp
LOCAL_MODULE_STEM := bindings_core_impl_generated
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_scripts_cached_jinja_templates_gyp,,,$(GYP_VAR_PREFIX))/cached_jinja_templates.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_scripts_cached_lex_yacc_tables_gyp,,,$(GYP_VAR_PREFIX))/cached_lex_yacc_tables.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_core_interfaces_info_individual_core_gyp,,,$(GYP_VAR_PREFIX))/interfaces_info_individual_core.stamp \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_modules_interfaces_info_gyp,,,$(GYP_VAR_PREFIX))/interfaces_info.stamp

### Rules for action "idl_dictionary":
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp: $(LOCAL_PATH)/third_party/WebKit/Source/core/css/FontFaceDescriptors.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMPointInit.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/ElementRegistrationOptions.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/MutationObserverInit.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/ScrollOptions.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/HitRegionOptions.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/page/EventSourceInit.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/testing/InternalDictionary.idl $(LOCAL_PATH)/third_party/ply/lex.py $(LOCAL_PATH)/third_party/ply/yacc.py $(LOCAL_PATH)/tools/idl_parser/idl_lexer.py $(LOCAL_PATH)/tools/idl_parser/idl_node.py $(LOCAL_PATH)/tools/idl_parser/idl_parser.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/blink_idl_lexer.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/blink_idl_parser.py $(gyp_shared_intermediate_dir)/blink/bindings/scripts/lextab.py $(gyp_shared_intermediate_dir)/blink/bindings/scripts/parsetab.pickle $(gyp_shared_intermediate_dir)/blink/bindings/scripts/cached_jinja_templates.stamp $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/idl_compiler.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/idl_definitions.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/idl_reader.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/idl_types.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/idl_validator.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/interface_dependency_resolver.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/code_generator_v8.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_attributes.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_callback_interface.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_dictionary.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_globals.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_interface.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_methods.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_types.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_union.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/v8_utilities.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/IDLExtendedAttributes.txt $(gyp_shared_intermediate_dir)/blink/bindings/modules/InterfacesInfoOverall.pickle $(gyp_shared_intermediate_dir)/blink/bindings/core/ComponentInfoCore.pickle $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating core IDL dictionary impl classes ($@)"
	$(hide)cd $(gyp_local_path)/third_party/WebKit/Source/bindings/core/v8; mkdir -p $(gyp_shared_intermediate_dir)/blink/core/testing $(gyp_shared_intermediate_dir)/blink/core/page $(gyp_shared_intermediate_dir)/blink/core/css $(gyp_shared_intermediate_dir)/blink/core/frame $(gyp_shared_intermediate_dir)/blink/bindings/core/v8 $(gyp_shared_intermediate_dir)/blink/core/dom $(gyp_shared_intermediate_dir)/blink/core/html/canvas; python ../../scripts/idl_compiler.py --cache-dir "$(gyp_shared_intermediate_dir)/blink/bindings/scripts" --output-dir "$(gyp_shared_intermediate_dir)/blink/bindings/core/v8" --impl-output-dir "$(gyp_shared_intermediate_dir)/blink/" --interfaces-info "$(gyp_shared_intermediate_dir)/blink/bindings/modules/InterfacesInfoOverall.pickle" --component-info "$(gyp_shared_intermediate_dir)/blink/bindings/core/ComponentInfoCore.pickle" --target-component core --write-file-only-if-changed 0 --generate-impl core_dictionary_idl_files_list.tmp

$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/css/FontFaceDescriptors.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/css/FontFaceDescriptors.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/DOMPointInit.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/DOMPointInit.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/ElementRegistrationOptions.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/ElementRegistrationOptions.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/MutationObserverInit.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/dom/MutationObserverInit.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/frame/ScrollOptions.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/frame/ScrollOptions.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/html/canvas/HitRegionOptions.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/html/canvas/HitRegionOptions.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/page/EventSourceInit.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/page/EventSourceInit.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/testing/InternalDictionary.cpp: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;
$(gyp_shared_intermediate_dir)/blink/core/testing/InternalDictionary.h: $(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.cpp \
	$(gyp_shared_intermediate_dir)/blink/bindings/core/v8/UnionTypesCore.h \
	$(gyp_shared_intermediate_dir)/blink/core/css/FontFaceDescriptors.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/css/FontFaceDescriptors.h \
	$(gyp_shared_intermediate_dir)/blink/core/dom/DOMPointInit.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/dom/DOMPointInit.h \
	$(gyp_shared_intermediate_dir)/blink/core/dom/ElementRegistrationOptions.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/dom/ElementRegistrationOptions.h \
	$(gyp_shared_intermediate_dir)/blink/core/dom/MutationObserverInit.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/dom/MutationObserverInit.h \
	$(gyp_shared_intermediate_dir)/blink/core/frame/ScrollOptions.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/frame/ScrollOptions.h \
	$(gyp_shared_intermediate_dir)/blink/core/html/canvas/HitRegionOptions.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/html/canvas/HitRegionOptions.h \
	$(gyp_shared_intermediate_dir)/blink/core/page/EventSourceInit.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/page/EventSourceInit.h \
	$(gyp_shared_intermediate_dir)/blink/core/testing/InternalDictionary.cpp \
	$(gyp_shared_intermediate_dir)/blink/core/testing/InternalDictionary.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
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
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
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
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
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
	$(gyp_shared_intermediate_dir)


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
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
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
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
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_bindings_core_v8_bindings_core_impl_generated_gyp

# Alias gyp target name.
.PHONY: bindings_core_impl_generated
bindings_core_impl_generated: third_party_WebKit_Source_bindings_core_v8_bindings_core_impl_generated_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
