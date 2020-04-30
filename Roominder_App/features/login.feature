Feature: Sign in to an account

    As a user
    So I can use the account after I signed out
    I want to be able to sign in

Scenario: As a user I want to be able to sign in after I've signed out
    Given I am on the home page
    When I click on the "Sign Up" button
    Then I should see the "Create" page
    When I click on the "Create a Room" button
    Then I should see the "call the home" page
    When I enter "name" as "test" 
    When I click on the "Create" button
    Then I should see the "New User" page
    When I enter "secure_user_name" as "test"
    When I enter "secure_user_username" as "test"
    When I enter "secure_user_email" as "skandim1@uncc.edu"
    When I enter "secure_user_password" as "test123"
    When I enter "secure_user_password_confirmation" as "test123"
    When I click on the "Sign Up" button
    Then I should see the "Code" page
    When I visit the root page
    When I click on the "Log Out" button
    When I visit the root page
    When I click on the "Log In" button
    When I enter "email" as "skandim1@uncc.edu"
    When I enter "password" as "test123"

