Feature: Chefs
  @wip
  Scenario: A visitor sees recipes by a particular chef
    Given that a chef "Gordon Ramsey" exist
      And a recipe for "Gordon Ramsey"
    When I am on the chef show page for "Gordon Ramsey"
    Then I should see his recipe