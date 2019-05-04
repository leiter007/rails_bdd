Feature: List articles on the landing page
  As a visitor,
  When I visit the landing page of the application
  I would like to see a list of all articles

  Background: User exists and has logged in, and multiple articles exists
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |
    Given the following articles exists
    | title                | content                          |
    | A breaking news item | Some really breaking action      |
    | Learn Rails 5        | Build awesome rails applications | 
  
    And I visit the sign_in page
    And I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I click "Log in" button
    And I should be on landing page

  Scenario: View list of articles on the landing page
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"