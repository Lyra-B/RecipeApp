Feature: Categories
  Scenario: A visitor selects a category from the navigation bar
    Given that some categories exist with some recipes
      And I am on the homepage
    When I select a category
    Then I should see all the recipes in that category