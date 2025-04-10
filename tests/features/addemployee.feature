Feature: Verify Add Employee functionality

    Feature Description

    # Scenario: Verify add employee with Mandatory deatils

    #     Given User launch the application
    #     When User Enter username as "Admin" and password as "admin123"
    #     And User clicks on login button
    #     Then User should be navigated to Dashboard
    #     When user clicks on PIM
    #     And  user clciks on add employee submenu
    #     And User enter firstname "Raju" and lastname "G"
    #     And user clicks on save button
    #     Then User should see that employee is created

    Scenario Outline: Verify add employee with Mandatory deatils

        Given User launch the application
        When User Enter username as "Admin" and password as "admin123"
        And User clicks on login button
        Then User should be navigated to Dashboard
        When user clicks on PIM
        And  user clciks on add employee submenu
        And User enter firstname "<firstname>" and lastname "<lastname>"
        And user clicks on save button
        Then User should see that employee is created
        Examples:
            | firstname | lastname |
            | Latha     | K        |
            | Nagarjun  | Yadav    |
            | Ravi      | abc      |