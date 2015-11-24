include(projects.pri)
include(depends.pri)

#общие библиотеки

#инициализация вызвать в начале проекта
#пока используется include(settings.pri)
defineTest(Init){

}

#Цель make install 
# параметр 1 - путь
defineTest(SetInstall){
    PATH = $$1
    #library
    target.path = $$PATH
    target.files = $$TARGET

    INSTALLS += headers
    export(INSTALLS)
    return (true)
}


#Копирование заголовочных файлов
#Копирует в билд диру в include/<имя_модуля> все хидеры модуля
defineTest(CopyHeaders){

    INC_PATH = $$BUILD_PATH/include/$$MODULE_NAME
    !exists($$INC_PATH){
        system($$QMAKE_MKDIR $$INC_PATH)
    }

    CLEAN_COMMAND = $$QMAKE_DEL_FILE $$INC_PATH/*
    system($$CLEAN_COMMAND)

    COPY_COMMAND = $$QMAKE_COPY ./include/* $$INC_PATH
    system($$COPY_COMMAND)

    #QMAKE_EXTRA_TARGETS += mytarget
    #export(QMAKE_EXTRA_TARGETS)
    return (true)
}
