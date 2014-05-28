#!/usr/bin/env bash

$EXTRACTRC `find settings/notifications -name '*.ui' -o -name '*.rc'` `find applet -name '*.ui'` >> rc.cpp
$XGETTEXT rc.cpp `find applet -name '*.cpp'` `find libs -name '*.cpp' | grep -v 'libs/editor'` `find settings/notifications -name '*.cpp'` -o $podir/plasma_applet_org.kde.plasma.networkmanagement.pot
$XGETTEXT `find applet -name '*.qml'` -j -L Java -o $podir/plasma_applet_org.kde.plasma.networkmanagement.pot
rm -f rc.cpp
