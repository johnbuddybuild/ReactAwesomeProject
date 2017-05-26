#!/usr/bin/env bash
echo '=== CUSTOM TEST PATH ==='
export $BUDDYBUILD_CUSTOM_TEST_RESULTS;
echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd ../

#sleep 15 && exec npm test
echo '=== Folder Listing Post Build'
echo '-----------------------------'
ls -1
echo '-----------------------------'

echo '=== Show required sdk version'
echo '-----------------------------'
xcodebuild -showsdks
echo '-----------------------------'

echo '=== Create a build for iOS simulator'
xcodebuild -arch i386 -sdk iphonesimulator10.2

echo '=== Show .app path'
echo '-----------------------------'
ls /Users/buddybuild/Library/Developer/Xcode/DerivedData/
ls /Users/buddybuild/Library/Developer/Xcode/DerivedData/TeleTracking/
ls /Users/buddybuild/Library/Developer/Xcode/DerivedData/TeleTracking/Build/
ls /Users/buddybuild/Library/Developer/Xcode/DerivedData/TeleTracking/Build/products/
ls /Users/buddybuild/Library/Developer/Xcode/DerivedData/TeleTracking/Build/products/Debug-iphonesimulator/
echo '-----------------------------'

echo '=== Install appium'
npm install -g appium

echo '=== Install selenium-webdriver'
npm install wd

echo '=== Install protractor'
npm install -g protractor

echo '=== Authorize iOS on the computer'
npm install -g authorize-ios
sudo authorize-ios

echo '=== Start appium server'
nohup appium &
sleep 5
