#!/usr/bin/env bash
echo '=== CUSTOM TEST PATH ==='
echo $BUDDYBUILD_CUSTOM_TEST_RESULTS;
echo '=== FOLDER LISTING POST BUILD'
ls -1

echo '=== Navigate to tests folder'
cd ../

npm install -g eslint

mkdir buddybuild_artifacts
mkdir buddybuild_artifacts/Jest
mkdir buddybuild_artifacts/ESLint
npm run lint
npm run ci_test
