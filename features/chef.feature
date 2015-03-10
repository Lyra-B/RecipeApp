Feature: Chefs
  @wip
  Scenario: A visitor sees recipes by a particular chef
    Given that a chef "Gordon Ramsey" exists
      And a recipe for "Gordon Ramsey"
    When I am on the chef show page for "Gordon Ramsey"
    Then I should see his recipe
  @wip
  Scenario: A visitor sees a particular chef recipe in its own page
    Given that a chef "Gordon Ramsey" exists
    When I am on the chef show page for "Gordon Ramsey"
    And I select the recipe "Lasagna"
    Then I see a "Lasagna" recipe page