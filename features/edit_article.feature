Feature: Edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my published articles

    Background: Article is already created
        Given the following articles exists
         | title      | content         | id |
         | Rails4Life | Slowly learning | 1  |
        And I visit the landing page
    
    Scenario: Succesfully update an article
        When I click the Edit link for article "1"
        Then I should be on the "Edit" page of "Rails4Life"
        And I fill in "article[content]" with "Getting a bit better"
        And I click "Update Article" button
        Then I should be on landing page
        And I should see "Getting a bit better"