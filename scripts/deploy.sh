#!/bin/sh
cd ..
flutter clean
rm -f .pubspeck.lock .flutter-plugin* .metadata .packages
flutter pub get
flutter packages upgrade

derry build

flutter build web --no-source-maps --release --csp --tree-shake-icons

firebase deploy
