#!/usr/bin/env bash

echo '=== PREBUILD FOLDER STRUCTURE'
ls -1
echo "=== INBOUND FOLDER PATH"
pwd
echo '=== ../ FOLDER STRUCTURE'
cd ../
ls -1
echo '=== ../ FOLDER PATH'
pwd

echo '=== install chromedriver'
brew install chromedriver

echo '=== Install appium 1.4.16'
npm install -g appium
echo '=== Install selenium-webdriver'
npm install wd

echo '=== Authorize simulator access'
echo password | sudo -S authorize_ios

echo '=== First start appium server, then start your cucumber tests, if one test has failed show exit 1 and mark build as failed'
nohup appium --native-instruments-lib -lt 999999 > output.out &
