Feature: Login 

Scenario: Valid user login with standard user
Given user is on saucedemo homepage
When user enters username "standard_user"
And user enters password  "secret_sauce"
And user clicks login 
Then user is logged in

Scenario: Valid user login with locked out user
Given user is on saucedemo homepage
When user enters username "locked_out_user"
And user enters password  "secret_sauce"
And user clicks login
Then user is logged in

Scenario Outline: Invalid user logins
Given user is on saucedemo homepage
When user enters username "<username>"
And user enters password "<password>"
And user clicks login
Then user is shown an error
Examples:
|username|password|
|username1|password1|
|username2|password2|
|username3|password3|

Scenario: Invalid user login with Ulyana
Given user is on saucedemo homepage
When user enters username "ulyana"
And user enters password "<123456>"
And user clicks login
Then user is shown an error


