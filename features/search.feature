Feature: Maps pins
    So that I can see where nearby dogsitters are located
    I would like to be able to see the pins on a map

Background:
  Given that following dog sitters exist in the system
  |name       |email      |password      |address1             |zip    |city         |latitude  |longitude |
  |Jenny      |j@gmail.com|12345678      |Storgatan 1          |11444  |Stockholm    |59.3358043|18.0779299|
  |Yan        |y@gmail.com|12345678      |Ostindiefararen 29   |41765  |Gothenburg   |57.6992599|11.9078464|
  |Calle      |c@gmail.com|12345678      |kampementsgatan 14   |11538  |Stockholm    |59.3461377|18.1010713|
  |Daniel     |d@gmail.com|12345678      |Vasagatan 36         |41124  |Gothenburg   |57.6987945|11.967052 |
  |Anna       |a@gmail.com|12345678      |Markgatan 3          |70355  |Örebro       |59.2793366|15.2082005|

Scenario: User sees searched place on the page
    Given I am on the "home page"
    And I fill in "location" with "Stockholm"
    And I fill in "Date" with "2016-06-03"
    And I click on the "Search" button
    Then I should see "Stockholm 2016-06-03"

 @javascript
 Scenario: Map center and search results
    Given I am on the "home page"
    And I fill in "location" with "Örebro"
    And I fill in "Date" with "2016-06-30"
    And I click on the "Search" button
    Then I am on the "search page"
  #  And I should see a pin on the map
