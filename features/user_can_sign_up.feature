Feature: User can sign-up
    As a user
    In order to access published articles
    I would like to be able to create an account

Scenario: Successfully create an account (Happy path)
    Given I visit the sign_in page
    And I click "Sign up" link
    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up" button
    Then I should see "Welcome, felix@craft.se"
    And I should be on landing page

Scenario: User can not select an email that has already been taken (Sad path)

Background: User already exists
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |
    And I visit the sign_in page
    And I click "Sign up" link

    When I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I click "Sign up" button
    Then I should see "Email has already been taken"


