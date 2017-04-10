import 'react-native';
import React from 'react';
import Index from '../index.ios.js';

// Note: test renderer must be required after react-native.
import renderer from 'react-test-renderer';
jasmine.DEFAULT_TIMEOUT_INTERVAL = 120*1000;

const local = {
  host: 'localhost',
  port: 4723
};
let driver = null;
var wd = require("wd"),
    _ = require('underscore'),
    Q = require('q');
driver = wd.promiseChainRemote(local);
beforeAll(()=>{
    return driver.init({
        platformName: 'iOS',
        platformVersion: '10.3',
        deviceName: 'iPhone Simulator',
        app: '/Users/john/AwesomeProject/ios/build/Build/Products/Release-iphonesimulator/AwesomeProject.app'
    });
});

it('renders correctly', () => {
  const tree = renderer.create(
    <Index />
  );
});

it('handles appium tests',() => {
    return driver.elementByAccessibilityId("Welcome to React Native!").then((element)=> {
        console.log(element);
        expect(element.value).toBe("Hello, World!");
    });
});
