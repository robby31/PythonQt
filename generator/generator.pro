TARGET = pythonqt_generator
CONFIG -= debug
CONFIG += release
DESTDIR = .

include(generator.pri)

win32-msvc2015: QMAKE_CXXFLAGS_RELEASE -= -Zc:strictStrings
win32-msvc2015: QMAKE_CFLAGS_RELEASE -= -Zc:strictStrings
win32-msvc2015: QMAKE_CFLAGS -= -Zc:strictStrings
win32-msvc2015: QMAKE_CXXFLAGS -= -Zc:strictStrings

# Input
HEADERS += \
        generatorsetqtscript.h \
        metaqtscriptbuilder.h \
        metaqtscript.h \
        shellgenerator.h \
        shellimplgenerator.h \
        shellheadergenerator.h \
        setupgenerator.h
   
SOURCES += \
        generatorsetqtscript.cpp \
        metaqtscriptbuilder.cpp \
        metaqtscript.cpp \
        shellgenerator.cpp \
        shellimplgenerator.cpp \
        shellheadergenerator.cpp \
        setupgenerator.cpp
