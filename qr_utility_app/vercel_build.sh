#!/bin/bash
set -e

git clone https://github.com/flutter/flutter.git -b stable --depth 1 /tmp/flutter
export PATH="$PATH:/tmp/flutter/bin"

flutter config --enable-web
flutter pub get
flutter build web --release