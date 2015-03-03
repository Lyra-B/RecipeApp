Given(/^that some categories exist with some recipes$/) do
  ["Gluten Free", "Low-Fat", "Mediterranean"].each do |category_name|
    category = Category.create!(:name => category_name)
    category.recipes.create!(:title => "Baked Beans")
  end
end

Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I select a category$/) do
  click_link "Gluten Free"
end

Then(/^I should see all the recipes in that category$/) do
  assert page.has_content?("Baked Beans"), "Couldn't find baked beans!"
end