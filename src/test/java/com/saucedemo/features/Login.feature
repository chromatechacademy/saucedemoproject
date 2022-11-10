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
<<<<<<< HEAD
And user clicks login 
=======
And user clicks login
>>>>>>> 259fb4106d0187291e0571d138c2bb2a34e82936
Then user is logged in

Scenario Outline: Invalid user logins
Given user is on saucedemo homepage
When user enters username "<username>"
<<<<<<< HEAD
And user enters password  "<password>"
And user clicks login 
Then user is logged in
=======
And user enters password "<password>"
And user clicks login
Then user is shown an error
>>>>>>> 259fb4106d0187291e0571d138c2bb2a34e82936
Examples:
|username|password|
|username1|password1|
|username2|password2|
<<<<<<< HEAD
|username3|password3|
=======
|username3|password3|
>>>>>>> 259fb4106d0187291e0571d138c2bb2a34e82936
