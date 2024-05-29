#-------------------------------------------------
#
# Project created by QtCreator 2015-10-20T10:53:32
#
#-------------------------------------------------

QT += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QT += printsupport
QT += gui
greaterThan(QT_MAJOR_VERSION, 5): QT += openglwidgets

TARGET = CartoTypeMaps
TEMPLATE = app

CONFIG += c++14

DEFINES += NDEBUG \
           SQLITE_ENABLE_RTREE \
           SQLITE_RTREE_INT_ONLY \
           SQLITE_THREADSAFE=0 \
           XML_STATIC

INCLUDEPATH += ../../main/base \
    ../../main/library/rapidxml-1.13 \
    ../../main/platform/qt/CartoTypeQtMapRenderer

SOURCES += main.cpp\
    mainwindow.cpp \
    mapform.cpp \
    mapchildwindow.cpp \
    onlinemapdialog.cpp \
    routedialog.cpp \
    finddialog.cpp \
    findaddressdialog.cpp \
    scaledialog.cpp \
    locationdialog.cpp \
    layerdialog.cpp \
    routeinstructionsdialog.cpp \
    routeprofiledialog.cpp \
    styledialog.cpp \
    stylemodel.cpp \
    styleitem.cpp \
    linestyledialog.cpp \
    util.cpp \
    polygonstyledialog.cpp \
    svgdialog.cpp \
    attributedialog.cpp

HEADERS += mainwindow.h \
    ../../main/base/cartotype.h \
    ../../main/base/cartotype_address.h \
    ../../main/base/cartotype_arithmetic.h \
    ../../main/base/cartotype_base.h \
    ../../main/base/cartotype_bidi.h \
    ../../main/base/cartotype_bitmap.h \
    ../../main/base/cartotype_char.h \
    ../../main/base/cartotype_color.h \
    ../../main/base/cartotype_epsg.h \
    ../../main/base/cartotype_errors.h \
    ../../main/base/cartotype_find_param.h \
    ../../main/base/cartotype_framework.h \
    ../../main/base/cartotype_graphics_context.h \
    ../../main/base/cartotype_iter.h \
    ../../main/base/cartotype_legend.h \
    ../../main/base/cartotype_map_object.h \
    ../../main/base/cartotype_navigation.h \
    ../../main/base/cartotype_path.h \
    ../../main/base/cartotype_stream.h \
    ../../main/base/cartotype_string.h \
    ../../main/base/cartotype_transform.h \
    ../../main/base/cartotype_types.h \
    ../../main/base/pstdint.h \
    mapform.h \
    mapchildwindow.h \
    onlinemapdialog.h \
    routedialog.h \
    finddialog.h \
    findaddressdialog.h \
    scaledialog.h \
    locationdialog.h \
    layerdialog.h \
    routeinstructionsdialog.h \
    routeprofiledialog.h \
    styledialog.h \
    ../../main/library/rapidxml-1.13/rapidxml.hpp \
    ../../main/library/rapidxml-1.13/rapidxml_iterators.hpp \
    ../../main/library/rapidxml-1.13/rapidxml_print.hpp \
    ../../main/library/rapidxml-1.13/rapidxml_utils.hpp \
    util.h \
    stylemodel.h \
    styleitem.h \
    linestyledialog.h \
    polygonstyledialog.h \
    svgdialog.h \
    attributedialog.h

FORMS    += mainwindow.ui \
    mapform.ui \
    onlinemapdialog.ui \
    routedialog.ui \
    finddialog.ui \
    findaddressdialog.ui \
    scaledialog.ui \
    locationdialog.ui \
    layerdialog.ui \
    routeinstructionsdialog.ui \
    routeprofiledialog.ui \
    styledialog.ui \
    linestyledialog.ui \
    polygonstyledialog.ui \
    svgdialog.ui \
    attributedialog.ui

RESOURCES += \
    icons.qrc

win32: RC_ICONS = CT_Arrow-RGB.ico

ICON = CartoTypeMacMaps.icns

win32:debug: CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../bin/17.0/x64/DebugDLL/ -lcartotype -lwinhttp -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/debug -lCartoTypeQtMapRenderer
win32:release: CONFIG(release, debug|release): LIBS += -L$$PWD/../../../bin/17.0/x64/ReleaseDLL/ -lcartotype -lwinhttp -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/release -lCartoTypeQtMapRenderer

unix:!macx:debug: CONFIG(debug, debug|release): LIBS += -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/debug/ -lCartoTypeQtMapRenderer -L$$PWD/../../main/single_library/unix/bin/Debug/ -lcartotype -lcurl -ldl
unix:!macx:release: CONFIG(release, debug|release): LIBS += -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/release/ -lCartoTypeQtMapRenderer -L$$PWD/../../main/single_library/unix/bin/ReleaseLicensed/ -lcartotype -lcurl -ldl

unix:!macx:debug: CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/debug/libCartoTypeQtMapRenderer.a $$PWD/../../main/single_library/unix/bin/Debug/libcartotype.a
unix:!macx:release: CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/release/libCartoTypeQtMapRenderer.a $$PWD/../../main/single_library/unix/bin/ReleaseLicensed/libcartotype.a

macx:debug: CONFIG(debug, debug|release): LIBS += -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/debug/ -lCartoTypeQtMapRenderer -L$$PWD/../../main/single_library/mac/CartoType/build/Debug/ -lCartoType
macx:release: CONFIG(release, debug|release): LIBS += -L$$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/release/ -lCartoTypeQtMapRenderer -L$$PWD/../../main/single_library/mac/CartoType/build/Release/ -lCartoType

macx:debug: CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/debug/libCartoTypeQtMapRenderer.a $$PWD/../../main/single_library/mac/CartoType/build/Debug/libCartoType.a
macx:release: CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../main/platform/qt/CartoTypeQtMapRenderer/build64/release/libCartoTypeQtMapRenderer.a $$PWD/../../main/single_library/mac/CartoType/build/Release/libCartoType.a
