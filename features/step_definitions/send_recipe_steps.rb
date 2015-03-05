Given(/^there is a recipe$/) do
  @recipe = Recipe.create!(:title => "Lasagna")
end

Given(/^I am in the recipe show page$/) do
  visit 'recipes/1'
end

When(/^I enter an email$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I add the email$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the link of the show page is sent to the email$/) do
  pending # express the regexp above with the code you wish you had
end
