
TARGET   = CPPPyWrapperExample
TEMPLATE = app

mac:CONFIG -= app_bundle

contains(QT_MAJOR_VERSION, 5) {
  QT += widgets multimedia
}


include ( ../../build/common.prf )  
include ( ../../build/PythonQt.prf )  

contains(QT_MAJOR_VERSION, 5) {
  QT += widgets
}

SOURCES +=                    \
  CPPPyWrapperExample.cpp        

RESOURCES += CPPPyWrapperExample.qrc

