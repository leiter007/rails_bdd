Feature: User can login
    As a user
    In order to access published articles
    I would like to be able to log in into my account

Background: User already exists
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |
    And I visit the sign_in page

Scenario: Successfully log in an account (Happy path)
    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should see "Welcome, felix@craft.se"
    And I should be on landing page

Scenario: User can not sign in if password is incorrect (Sad path)
    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password1"
    And I click "Log in" button
    Then I should be on sign_in page