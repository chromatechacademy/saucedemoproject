package com.saucedemo.stepDefinitions;

import com.saucedemo.appsCommon.PageInitializer;
import com.saucedemo.utils.ConfigReader;
import com.saucedemo.web.WebDriverUtils;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class LoginStepDef extends PageInitializer {

    @Given("user is on saucedemo homepage")
    public void user_is_on_saucedemo_homepage() {
        WebDriverUtils.driver.get(ConfigReader.getPropertyValue("url"));

    }

    @When("user enters username {string}")
    public void user_enters_username(String string) {
        loginPage.getLoginBtn().sendKeys(string);
    }

    @When("user enters password  {string}")
    public void user_enters_password(String string) {
        loginPage.getPasswordTextbox().sendKeys(string);
    }

    @When("user clicks login")
    public void user_clicks_login() {
        loginPage.getLoginBtn().click();
    }

    @Then("user is logged in")
    public void user_is_logged_in() {
        
    }

}
