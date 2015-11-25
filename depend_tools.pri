#Функции для подключения заивисмостей

#Установка путей заголовочных файлов
defineTest(SetHeadersPath){
    PATHS = $$1 #Cписок путей
    isEmpty(PATHS){
        warning(SetHeadersPath: empty 1 arg)
        return (false)
    }

    for(p, PATHS){
        INCLUDEPATH += $$p
    }
    export(INCLUDEPATH)
    return(true)
}

#Установка путей библиотек
defineTest(SetLibraryPath){
    PATHS = $$1 #список путей
    isEmpty(PATHS){
        warning(SetLibraryPaths: empty 1 arg)
        return (false)
    }
    for(p, PATHS){
        LIBS += -L$$p
    }
    export(LIBS)
    return (true)
}


#Подключение либ
defineTest(ExportModules){
# example:
#    PMODULES = Foundation Util Net XML JSON
#    ExportModules($$PMODULES, Poco)
#
    MODULES = $$1
    PREFIX = $$2
    SUFFIX = $${3}$${LIB_SUFFIX}

    for(mod, MODULES){
        LIBS += -l$${PREFIX}$${mod}$${SUFFIX}
    }
    export(LIBS)
    return (true)
}

#включение флага для экспорта библиотек библиотек 
#example:
#LIBRARY_EXPORT{
#    ... #подключаем модули, нужно для бинарников
#}
#
defineTest(EnableModuleExport){
    CONFIG += LIBRARY_EXPORT
    export(CONFIG)
}

#Выключение флага экспорта либ
defineTest(DisableModuleExport){
    CONFIG -= LIBRARY_EXPORT
    export(CONFIG)
}

#Выключение суффикса d для библиотек в режиме сборки Debug
defineTest(DisableDebugSuffix){
    LIB_SUFFIX=
    export(LIB_SUFFIX)
    return (true)
}

#Включение суффикса d для библиотек в режиме сборки Debug
#Если сборка Release, проигнорируется
defineTest(EnableDebugSuffix){
    #планы на будущее
    #PREFIX = $$1
    #POSTFIX = $$2
    CONFIG(debug, debug|release) {
        #LIB_SIFFIX = $${PREFIX}d$${POSTFIX}
        LIB_SUFFIX=d
    } else {
        LIB_SUFFIX=                 #суффикс для библиотек d - для дебаг и пустой для release
    }

    export(LIB_SUFFIX)
    return(true)
}

#поиск и подключение файлов зависимостей
#TODO допилить
defineTest(GetDepends){
    return(false)
}
