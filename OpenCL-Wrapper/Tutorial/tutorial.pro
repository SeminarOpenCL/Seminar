TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += ../Code/inc

include(1.platform/platform.pri)
include(2.context/context.pri)
include(3.queue/queue.pri)
include(4.program/program.pri)
include(5.buffer/buffer.pri)
include(6.kernel/kernel.pri)
include(7.events/events.pri)
include(8.matrix/matrix.pri)
include(9.minimum/minimum.pri)
include(10.image/image.pri)
include(11.profile/profile.pri)

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/ -lstdc++
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/ -lstdc++d
else:unix: LIBS += -L$$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/ -lstdc++

INCLUDEPATH += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/include/c++
DEPENDPATH += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/include/c++

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/libstdc++.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/libstdc++d.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/stdc++.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/stdc++d.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../../../../../MinGW/lib/gcc/mingw32/4.8.1/libstdc++.a
