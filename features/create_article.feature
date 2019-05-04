Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to to create articles

  Background: User exists and has logged in
    Given the following user exists
    | email         | password  |
    | felix@craft.se| password  |
    And I visit the sign_in page
    And I fill in "Email" with "felix@craft.se"
    And I fill in "Password" with "password"
    And I click "Log in" button
    And I should be on landing page

  Scenario: Successfully create an article [Happy Path]
    When I click "New article" link
    And I fill in "article[title]" with "Learning Rails 5"
    And I fill in "article[content]" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created"
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I click "New article" link
    And I fill in "article[title]" with ""
    When I fill in "article[content]" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"