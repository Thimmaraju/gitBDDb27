Feature: Verify Add Job title functionality

    Feature Description

    Scenario: Verify add Job title with Mandatory deatils

        Given User launch the application
        When User Enter username as "Admin" and password as "admin123"
        And User clicks on login button
        Then User should be navigated to Dashboard
        When user clicks on Admin module
        And  user clciks on Job submenu 
        And User clicks on job titles 
        And user clicks on Add button 
        And  User Enter the job title 
        And User Enter the job description 
        And User cliks on save button 
        Then User should see that job title should be created
