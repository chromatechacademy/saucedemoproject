Feature: Login 

Scenario: Valid user login
Given user is on saucedemo homepage
When user enters username
And user enters password
And user clicks login 
Then user is logged in
