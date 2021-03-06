
TEMPLATE = lib

TARGET = PythonQt_QtAll

!exists($$(MYLIBRARY)) {
    error("variable MYLIBRARY not set.")
}

DESTDIR = $$(MYLIBRARY)/$$QT_VERSION

include ( ../../build/common.prf )  
include ( ../../build/PythonQt.prf )  

CONFIG += qt


# allow to choose static linking through the environment variable PYTHONQT_STATIC
PYTHONQT_STATIC = $$(PYTHONQT_STATIC)
isEmpty(PYTHONQT_STATIC) {
  CONFIG += dll
} else {
  CONFIG += static
}


DEFINES +=  PYTHONQT_QTALL_EXPORTS

HEADERS +=                \
  PythonQt_QtAll.h
  
SOURCES +=                \
  PythonQt_QtAll.cpp

QT += uitools gui svg sql network xml xmlpatterns opengl

  lessThan(QT_MAJOR_VERSION, 5) {
    QT += webkit
  } else {
    lessThan(QT_MINOR_VERSION, 6) {
      QT += webkit
    } else {
      DEFINES += QT_NO_WEBKIT
    }
  }

contains(QT_MAJOR_VERSION, 5) {
  QT += widgets printsupport multimedia
  lessThan(QT_MINOR_VERSION, 6) {
    QT += webkitwidgets
    include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_webkit/com_trolltech_qt_webkit.pri)
  }
}

include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_core/com_trolltech_qt_core.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_gui/com_trolltech_qt_gui.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_svg/com_trolltech_qt_svg.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_sql/com_trolltech_qt_sql.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_network/com_trolltech_qt_network.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_opengl/com_trolltech_qt_opengl.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_xml/com_trolltech_qt_xml.pri)
include ($$PYTHONQT_GENERATED_PATH/com_trolltech_qt_uitools/com_trolltech_qt_uitools.pri)
