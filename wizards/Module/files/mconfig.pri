#Переменные модуля
MODULE_NAME = %{Module.Name}
LOCAL_DEPS = %{LocalDepends}

#Должна быть определна переменная $$PROJECT_ROOT
ImportLocalHeaders($$PROJECT_ROOT, $$LOCAL_DEPS)
ImportModules($$LOCAL_DEPS)
