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
|username4|password4|

Scenario: Invalid user login with James_Eng
Given user is on saucedemo homepage
When user enters username "James_Eng"
And user enters password  "12345"
And user clicks login
Then user is shown an error

Scenario: Invalid user login with sergey
Given user is on saucedemo homepage
When user enters username "sergey"
And user enters password  "12345"
And user clicks login 
Then user is logged in

Scenario: Invalid user login with Arthur
When user enters username "Arthur"
And user enters password  "12345"
And user clicks login
Then user is shown an error

Scenario: Invalid user login with Ayla
Given user is on saucedemo homepage
When user enters username "Ayla"
And user enters password "12345"
And user clicks login
Then user is shown an error

Scenario: Invalid user login with Reshad
Given user is on saucedemo homepage
When user enters username "Reshad"
And user enters password "12345"
And user clicks login
Then user is shown an error


Scenario: Invalid user login with Rukshan 
Given user is on saucedemo homepage
When user enters username "Rukshan"
And user enters password "12345"
And user clicks login
Then user is shown an error