Feature: Mailing List
  @wip
  Scenario: A visitor joins the mailing list
    Given I am on the homepage
    When I enter my name and email address
      And I join the mailing list
    Then I should be signed-up to the mailing list
      And I should see "Added to Mailing List" in the flash notice
      And I should receive a welcome email