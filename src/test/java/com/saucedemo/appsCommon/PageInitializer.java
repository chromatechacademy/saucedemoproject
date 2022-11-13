package com.saucedemo.appsCommon;

import com.saucedemo.pages.LoginPage;
import com.saucedemo.web.WebDriverUtils;

public class PageInitializer extends WebDriverUtils {

    public static LoginPage loginPage;
   

    public void initializeAllPages() {

        loginPage = new LoginPage();
    }

}
