package com.saucedemo.stepDefinitions;

import com.saucedemo.appsCommon.PageInitializer;
import com.saucedemo.utils.CucumberLogUtils;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

public class Hooks extends PageInitializer {

    @Before
    public void start(Scenario scenario) {
        CucumberLogUtils.scenario = scenario;
        setUp();
        initializeAllPages(); 
    }

    @After
    public void end() {
        tearDown();
    }

}
