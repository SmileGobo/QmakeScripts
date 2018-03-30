MODULE_NAME = %{ModuleName}
LOCAL_DEPS = %{LocalDepends}
EXT_DEPS1 = %{ExtDepends1.list}
EXT_DEPS_PREFIX1 = %{ExtDepends1.Prefix}
EXT_DEPS_HEADERS = %{ExtDepends1.Headers}
EXT_DEPS2 = %{ExtDepends2}
EXT_DEPS3 = %{ExtDepends3}
EXT_DEPS4 = %{ExtDepends4}
EXT_DEPS5 = %{ExtDepends5}

ImportLocalHeaders($$ROOT_PATH, $$LOCAL_DEPS)
ImportSDK($$SDK_PATH)