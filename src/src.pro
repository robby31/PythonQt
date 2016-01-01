# --------- PythonQt profile -------------------
# Last changed by $Author: florian $
# $Id: PythonQt.pro 35381 2006-03-16 13:05:52Z florian $
# $Source$
# --------------------------------------------------

TEMPLATE = lib

TARGET = PythonQt

!exists($$(MYLIBRARY)) {
    error("variable MYLIBRARY not set.")
}

DESTDIR = $$(MYLIBRARY)/$$QT_VERSION

CONFIG += qt
CONFIG -= flat


# allow to choose static linking through the environment variable PYTHONQT_STATIC
PYTHONQT_STATIC = $$(PYTHONQT_STATIC)
isEmpty(PYTHONQT_STATIC) {
  CONFIG += dll
} else {
  CONFIG += static
}

contains(QT_MAJOR_VERSION, 5) {
  QT += widgets multimedia
}

INCLUDEPATH += $$PWD

include ( ../build/common.prf )  
include ( ../build/python.prf )

include ( src.pri )  

include($${PYTHONQT_GENERATED_PATH}/com_trolltech_qt_core_builtin/com_trolltech_qt_core_builtin.pri)
include($${PYTHONQT_GENERATED_PATH}/com_trolltech_qt_gui_builtin/com_trolltech_qt_gui_builtin.pri)

HEADERS += \
    PythonQtDoc.h \
    PythonQtPythonInclude.h
