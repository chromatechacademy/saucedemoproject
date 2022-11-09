Feature: Login 

Scenario: Valid user login
Given user is on saucedemo homepage
When user enters username "standard_user"
And user enters password  "secret_sauce'
And user clicks login 
Then user is logged in
