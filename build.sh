#!/bin/bash

flutter packages pub run build_runner build && \
flutter format -l 120 lib
  
# use vscode console: Dart: Restart Analysis Server
# shift+command+p