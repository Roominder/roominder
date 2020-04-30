Feature: Users can sign up

    As a user
    So I could use roominder
    I want to be able to create a room

Scenario: As a user I want to be able to create a new room
    Given I am on the home page
    When I click on the "Sign Up" button
    Then I should see the "Create" page
    When I click on the "Create a Room" button
    Then I should see the "call the home" page
    When I enter "name" as "test" 
    When I click on the "Create Room!" button
    Then I should see the "New User" page
    When I enter "secure_user_name" as "test"
    When I enter "secure_user_username" as "test"
    When I enter "secure_user_email" as "skandim1@uncc.edu"
    When I enter "secure_user_password" as "test123"
    When I enter "secure_user_password_confirmation" as "test123"
    When I click on the "Sign Up" button
    Then I should see the "Tasks" page


