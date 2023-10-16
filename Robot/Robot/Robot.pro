TEMPLATE = app

QT += qml quick network xml texttospeech
#QT += texttospeech
CONFIG += c++11

SOURCES += main.cpp \
    texttospeech.cpp \
    turing.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    texttospeech.h \
    turing.h
