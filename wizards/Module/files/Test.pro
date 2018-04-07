include(%{JS: Util.relativeFilePath("%{PathTo.ProjectConfig}", "%{PathTo.UnitTest}")})
include(%{JS: Util.relativeFilePath("%{PathTo.ModuleRoot}/%{Module.ConfigFile}", "%{PathTo.UnitTest}")})

ConsoleApplication(%{JS: "%{Module.Name}-test".toLowerCase()})

ImportModules($$LOCAL_DEPS)
ImportModules($$EXT_DEPS1.list, $$EXT_DEPS1.prefix)

SOURCES = \
    src/main.cpp