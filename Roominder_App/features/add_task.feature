Feature: Add a new task to a room

    As a user
    So I can have my roommates know what tasks need to be done
    I want to be able to add a task

Scenario: As a user I want to be able to add a task to my room
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
    Then I should see the "Room Invite" page
    #When I click on the "Log In" button
    #Then I should see the "Login" page
    #When I enter "email" as "skandim1@uncc.edu" 
    #When I enter "password" as "test123"
    #When I click on the "Login" button
    #Then I should see the Room Invite" page
    When I click on the "Create Task" link
    When I enter "task_taskName" as "trash" 
    When I enter "task_dueDate" as "05/10/2020"
    When I enter "task_collateral" as "5"
    When I click on the "Save Task" button
    Then I should see the "Room Invite" page
    And I should see the "trash" page
