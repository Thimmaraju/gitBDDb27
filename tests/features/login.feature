Feature: Verify Login functionality

    Feature Description

    Background: Launch url     
        Given User launch the application

    Scenario: Verify login with valid credentials
        When User Enter username as "Admin" and password as "admin123"
        And User clicks on login button
        Then User should be navigated to Dashboard


    Scenario: Verify login with valid username and Invalid password
        When User Enter username as "Admin" and password as "dfkjghj"
        And User clicks on login button
        Then User should get login error message


    Scenario: Verify login with invalid username and valid password
        When User Enter username as "Admgjerbgin" and password as "admin123"
        And User clicks on login button
        Then User should get login error message

    Scenario: Verify login with invalid username and invalid password
        When User Enter username as "Admgjerbgin" and password as "dfkgjhnet"
        And User clicks on login button
        Then User should get login error message