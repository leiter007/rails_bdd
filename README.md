# AUT Challenge

## Description
This repo contains the work initiated with a challenge on the fourth week of the [Craft Academy Bootcamp](https://craftacademy.se/english/curriculum/), by April 2019 Cohort.

The challenge was to explore the concept of AUT - Acceptance Unit Test cycle - using high-level feature tests as a starting point and working "outside-in" to validate that the application is built in accordance with user requirements - step-by-step. The challenge was due in 24hours.

Additional tasks was added the week after as a weekend challenge for adding comment functionality for already created articles.

## User stories

````
As a visitor,
When I visit the landing page of the application
I would like to see a list of all articles
````
````
As a publisher
In order to add relevant content to my news service
I would like to be able to to create articles
````
````
As a publisher
In order to keep my content accurate
I would like to be able to edit my published articles
````
````
As a publisher
In order to keep my article list relevant
I would like to be able to delete articles
````
````
As a visitor
In order to give input to an article's content
I would like to be able to write a comment to an articles
````
````
As a visitor
In order to keep the comment list relevant
I would like to be able to delete a comment
````

## Built and tested with
[Ruby on Rails](https://developer.mozilla.ohttps://rubyonrails.org/) |
[Cucumber](https://cucumber.io/) 

## Deployed site with [Heroku](www.heroku.com):
https://felix-rails-bdd.herokuapp.com/


## Designed and developed by
**Felix Bonnier** - [leiter007](https://github.com/leiter007)

## How to use
* In your terminal, run ```rails server``` and then launch your [localhost](http://localhost:3000/articles) to visit the application. Landing page should have ```/articles``` as extension
* You can/need to add a login account before visiting the site
* You can create articles - with title and content
* You can view a list of created articles - at landing page
* You can Edit created articles - at landing page
* You can delete created articles - after clicking on "Show" link on landing page
* You can add and delete Comments on each Article page after clicking "Show" link

## Acknowledgements
* Input to validation of format for email from [StackOverflow](https://stackoverflow.com/questions/4776907/what-is-the-best-easy-way-to-validate-an-email-address-in-ruby)