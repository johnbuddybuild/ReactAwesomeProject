#!/usr/bin/env bash

cd /Users/buddybuild/workspace

echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd /Users/buddybuild/workspace



echo '=== Authorize simulator access'
echo password | sudo -S authorize_ios

echo '=== First start appium server, then start your cucumber tests, if one test has failed show exit 1 and mark build as failed'
nohup appium --native-instruments-lib -lt 999999 &
sleep 15 && bundle exec npm test
status=$?
pkill -f appium
if [ $status -ne 0 ]; then
echo TESTS FAILED

echo '=== Upload results to s3'

exit 1
fi
