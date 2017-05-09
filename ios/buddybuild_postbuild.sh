#!/usr/bin/env bash

echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd /tmp/sandbox/workspace

export TEST_VAR=2341
node ex.js
sleep 15 && exec npm test
