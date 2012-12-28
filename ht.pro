#-------------------------------------------------
#
# Project created by QtCreator 2012-12-24T12:47:27
#
#-------------------------------------------------

QT       -= core gui

TARGET = ht
TEMPLATE = lib

DEFINES += HT_LIBRARY

QMAKE_CFLAGS += -std=c99

LIBS += -L$$OUT_PWD/SegaCore/Core/ \
        -L$$OUT_PWD/psflib/

LIBS += -lpsflib -lSegaCore -lz

DEPENDPATH += $$PWD/SegaCore/Core \
              $$PWD/psflib

PRE_TARGETDEPS += $$OUT_PWD/SegaCore/Core/libSegaCore.a \
                  $$OUT_PWD/psflib/libpsflib.a

INCLUDEPATH += SegaCore/Core \
               psflib

SOURCES += \
    htplug.c

HEADERS +=

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
