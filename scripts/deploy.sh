#!/bin/sh
cd ..
flutter clean
rm -f .pubspeck.lock .flutter-plugin* .metadata .packages
flutter pub get
flutter packages upgrade

derry build

flutter build web --null-assertions --release --csp --tree-shake-icons

open ./build/web

cd build/web
git init                                                 
git add . -v
git commit -am "📺"
git remote add origin https://github.com/Mravuri96/IPTV-Player.git
git push -u origin master --force