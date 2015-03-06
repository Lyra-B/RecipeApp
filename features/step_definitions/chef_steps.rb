Given(/^that a chef "(.*?)" exist$/) do |arg1|
  expect(Chef.where(name: "Gordon Ramsey").count).to eq(1)
end

Given(/^a recipe for "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I am on the chef show page for "(.*?)"$/) do |arg1|
  visit '/chefs/1'
end

Then(/^I should see his recipe$/) do
  pending # express the regexp above with the code you wish you had
end