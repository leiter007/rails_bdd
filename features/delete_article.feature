Feature: Delete articles
  As a publisher
  In order to keep my article list relevant
  I would like to be able to delete articles

  Background: User exists and has logged in, and article is already created
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |
    And I visit the sign_in page
    And I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I click "Log in" button
    And I should be on landing page
    Given the following articles exists
    | title      | content         |
    | Rails4Life | Slowly learning |

  Scenario: Successfully deleting an article
    When I click "Show" link
    Then I should be on "Rails4Life" page
    And I click "Delete" link
    Then I should be on landing page
    And I should not see "Rails4Life"