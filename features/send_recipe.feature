#TODO - Add a Feature file called 'send_recipe.feature' that allows you to enter someone's e-mail address from the show recipe page and it will send them a link to the show page.
# @wip
Feature:Send Recipe
  Scenario:
    Given there is a recipe
      And I am in the recipe show page
    When I enter an email
      And I add the email
    Then the link of the show page is sent to the email