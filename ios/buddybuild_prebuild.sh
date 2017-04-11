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
