Feature: Delete articles
As a publisher
In order to keep my article list relevant
I would like to be able to delete articles

    Background: Article is already created
        Given the following articles exists
         | title      | content         | id |
         | Rails4Life | Slowly learning | 1  |
        And I visit the landing page

    Scenario: Successfully deleting an article
        When I click the Show link for article "1"
        Then I should be on "Rails4Life" page
        And I click "Delete" link
        And I click "OK" in popup
        Then I should be on landing page
        And I should not see "Rails4Life"