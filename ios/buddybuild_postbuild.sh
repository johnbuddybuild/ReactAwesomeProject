#!/usr/bin/env bash
echo '=== CUSTOM TEST PATH ==='
export $BUDDYBUILD_CUSTOM_TEST_RESULTS;
echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd ../
