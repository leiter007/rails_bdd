Feature: User can sign-up
    As a user
    In order to access published articles
    I would like to be able to create an account

Scenario: Successfully create an account (Happy path)
    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up" button
    Then I should see "Welcome, felix@craft.se"