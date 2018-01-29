@landing_page
Feature: CukeHub Landing Page
		 In order to make Amigos aware of the 4th Amigo
		 CukeHub needs a descriptive informational Landing Page

@one
Scenario: The Fourth Amigo tag line displays for authenticated users
  Given I am an authenticated user
   When I visit the landing page
   Then I should see "The Fourth Amigo" on the page
   Then I should NOT see "The Third Amigo" on the page

@two
Scenario: The Fourth Amigo tag line displays for unauthenticated users
  Given I am an unauthenticated user
   When I visit the landing page
   Then I should see "The Fourth Amigo" on the page

@three
Scenario: More information can be found in the About section
  Given I am an unauthenticated user
    And I visit the landing page
   When I visit the About section
   Then I should see "What is a Cuke?" on the page
    And I should see "If CukeHub is the Fourth Amigo, who are the other Three Amigos?" on the page

@one @twitter
Scenario: Amigos can reach the twitter page
  Given I am an unauthenticated user
    And I visit the landing page
    And I visit the About section
    And I scroll down to the bottom of the page
   When I visit the CukeHub twitter page from the twitter icon
   Then I should see the latest tweets from CukeHub
   And I should be on the "https://twitter.com/cukehub" page
   
@two
Scenario: Amigos can reach the CukeHub API page
  Given I am an unauthenticated user
    And I visit the landing page
    And I click the API link
   When I enter the new tab
   Then I should see "CukeHub API" on the page

@three
Scenario: Amigos can review the Terms and Conditions
  Given I am an unauthenticated user
    And I visit the landing page
    And I visit the About section
    And I scroll down to the bottom of the page
   When I visit the CukeHub Terms and Conditions page
   Then I should see "TERMS OF USE" on the page
