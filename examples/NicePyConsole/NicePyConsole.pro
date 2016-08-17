TARGET   = NicePyConsole
TEMPLATE = app

contains(QT_MAJOR_VERSION, 5) {
  QT += widgets multimedia
}

mac:CONFIG-= app_bundle

win32-msvc2015: QMAKE_CXXFLAGS_RELEASE -= -Zc:strictStrings
win32-msvc2015: QMAKE_CFLAGS_RELEASE -= -Zc:strictStrings
win32-msvc2015: QMAKE_CFLAGS -= -Zc:strictStrings
win32-msvc2015: QMAKE_CXXFLAGS -= -Zc:strictStrings

include ( ../../build/common.prf )  
include ( ../../build/PythonQt.prf )  
include ( ../../build/PythonQt_QtAll.prf )


HEADERS +=                  \
  SimpleConsole.h           \
  NicePyConsole.h           \
  PygmentsHighlighter.h     \
  PythonCompleter.h         \
  PythonCompleterPopup.h
  
SOURCES +=                  \
  SimpleConsole.cpp         \
  NicePyConsole.cpp         \  
  main.cpp                  \
  PygmentsHighlighter.cpp   \
  PythonCompleter.cpp       \
  PythonCompleterPopup.cpp

OTHER_FILES +=              \
  PygmentsHighlighter.py    \
  PythonCompleter.py        \
  module_completion.py

RESOURCES += \
    NPC.qrc
