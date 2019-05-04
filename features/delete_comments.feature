Feature: Create comments
  As a visitor
  In order to keep the comment list relevant
  I would like to be able to delete a comment

  Background: User exists and has logged in, and comment is already created
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

  Scenario: Succesfully delete a comment
    When I click Show link for "Rails4Life" 
    Then I should be on "Rails4Life" page
    And I should see "Add a comment"
    And I fill in "comment[commenter]" with "Felix"
    And I fill in "comment[body]" with "Nice article!"
    And I fill in "comment[email]" with "felix@craft.se"
    And I click "Create Comment" button
    And I click "Delete comment" link
    Then I should not see "Nice article!"