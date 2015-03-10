Feature: Cuisines
@wip
  Scenario: A visitor selects a cuisine from the navigation bar
    Given that some cuisines exist with some recipes
      And I am on the homepage
    When I select a cuisine
    Then I should see all the recipes in that cuisine