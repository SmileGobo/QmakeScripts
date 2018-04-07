
include(%{JS: Util.relativeFilePath("%{PathTo.ProjectConfig}", "%{PathTo.Module}")})
include(%{JS: Util.relativeFilePath("%{PathTo.ModuleRoot}/%{Module.ConfigFile}", "%{PathTo.Module}")})

StaticLibrary($$MODULE_NAME)