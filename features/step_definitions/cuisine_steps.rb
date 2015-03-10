Given(/^that some cuisines exist with some recipes$/) do
  ["European", "Asian", "American"].each do |cuisine_name|
    @cuisine = Cuisine.create!(:name => cuisine_name)
    @cuisine.recipes.create!(:title => "Pizza")
  end
end

When(/^I select a cuisine$/) do
  save_and_open_page
  click_link "European"
end

Then(/^I should see all the recipes in that cuisine$/) do
  expect(page.has_content?("Pizza")).to eq(true)
end