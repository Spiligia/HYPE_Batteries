TEMPLATE = app
TARGET = Display

QT += qml quick bluetooth
CONFIG += c++11

HEADERS += \
    connectionhandler.h \
    deviceinfo.h \
    devicefinder.h \
    devicehandler.h \
    bluetoothbaseclass.h \
    heartrate-global.h \
    heatmapimageprovider.h \
    third-party/QHeatMap/include/global.h \
    third-party/QHeatMap/include/gradientpalette.h \
    third-party/QHeatMap/include/heatmapper.h \
    src/heatmapimageprovider.h \

SOURCES += main.cpp \
    connectionhandler.cpp \
    deviceinfo.cpp \
    devicefinder.cpp \
    devicehandler.cpp \
    bluetoothbaseclass.cpp \
    heatmapimageprovider.cpp \
    third-party/QHeatMap/lib/gradientpalette.cpp \
    third-party/QHeatMap/lib/heatmapper.cpp \

#include("third-party/QHeatMap/QHeatMap.pri")

ios: QMAKE_INFO_PLIST = Info.plist
macos: QMAKE_INFO_PLIST = ../shared/Info.qmake.macos.plist

RESOURCES += qml.qrc \
    images.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

target.path = $$[QT_INSTALL_EXAMPLES]/bluetooth/heartrate-game
INSTALLS += target

SUBDIRS += \
    third-party/QHeatMap/lib/lib.pro \

DISTFILES += \
    icons/battery-empty-solid.svg \
    third-party/QHeatMap/LICENSE \
    third-party/QHeatMap/QHeatMap.pri \
    third-party/QHeatMap/README.md
