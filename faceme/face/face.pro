#-------------------------------------------------
#
# Project generated by QtCreator for SyberOS.
#
#-------------------------------------------------

# This is needed for using syberos-application module
include(../syberos.pri)

QT += gui qml quick
TARGET = faceme
TEMPLATE = app

CONFIG += link_pkgconfig qml_debug
PKGCONFIG += syberos-application syberos-application-cache

LIBS += -laudio-manager

LIBS += -L../webrtc
LIBS += -lfacemewebrtc
INCLUDEPATH += ../webrtc/interface

#zhangp add 2016.3.24 begin
LIBS += -L../libyuv
LIBS += -lyuv
INCLUDEPATH += ../libyuv/include
#zhangp add 2016.3.24 end

#zhangp add 2016.3.24 begin
LIBS += -L$$PWD/../webrtc/vpx/lib/libvpx.a
#zhangp add 2016.3.24 end

#必须添加
QMAKE_LFLAGS += -Wl,-rpath=$$LIB_DIR -Wl,-Bsymbolic

RESOURCES += qml.qrc images.qrc

HEADERS += src/face_workspace.h

SOURCES += src/main.cpp \
		   src/face_workspace.cpp

OTHER_FILES += qml/*.qml

target.path = $$INSTALL_DIR/bin

res.files = res
res.path = $$INSTALL_DIR/

INSTALLS += target res

