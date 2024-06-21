#!/bin/bash

# Chạy unit test cho Flutter
echo "Running Flutter unit tests..."
flutter test

# Chạy unit test cho Android
echo "Running Android unit tests..."
cd android
./gradlew test
cd ..
