package com.saucedemo.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.saucedemo.web.WebDriverUtils;

public class LoginPage {

    @FindBy(id = "user-name")
    private WebElement userNameTextbox;

    @FindBy(id = "password")
    private WebElement passwordTextbox;

    @FindBy(id = "login-button")
    private WebElement loginBtn;

    public WebElement getUserNameTextbox() {
        return userNameTextbox;
    }

    public WebElement getPasswordTextbox() {
        return passwordTextbox;
    }

    public WebElement getLoginBtn() {
        return loginBtn;
    }

    public LoginPage() {

        PageFactory.initElements(WebDriverUtils.driver, this);
    }

}
