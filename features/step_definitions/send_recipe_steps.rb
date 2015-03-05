Given(/^there is a recipe$/) do
  @recipe = Recipe.create!(:title => "Lasagna")
end

Given(/^I am in the recipe show page$/) do
  visit 'recipes/1'
end

When(/^I enter an email$/) do
  fill_in "Email", :with => "glykykerkyra@gmail.com"
end

When(/^I add the email$/) do
  click_button "Recommend to a friend"
end

Then(/^the link of the show page is sent to the email$/) do
  expect(ActionMailer::Base.deliveries.empty?).to eq(false)
end
