#!/usr/bin/env bash

echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd /tmp/sandbox/workspace

sleep 15 && bundle exec npm test
