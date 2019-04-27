Feature: User can login
    As a user
    In order to access published articles
    I would like to be able to log in into my account

Background: User already exists
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |

Scenario: Successfully log in an account (Happy path)
    Given I visit the sign_in page
    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should see "Welcome, felix@craft.se"
    And I should be on landing page