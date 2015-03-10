Given(/^that a chef "(.*?)" exists$/) do |name|
  @chef = Chef.new(:name => name)
  @chef.save!
end

Given(/^a recipe for "(.*?)"$/) do |name|
  # @chef = Chef.find_by_name(name)
  @chef.recipes << Recipe.new(:title => "Lasagna")
  @recipe = @chef.recipes.first
  @recipe.save!
  # @chef.save!
end

When(/^I am on the chef show page for "(.*?)"$/) do |name|
  # @chef = Chef.find_by_name(name)
  visit chef_path(@chef)
end

When(/^I select the recipe "(.*?)"$/) do |recipe|
  save_and_open_page
  click_link recipe
end

Then(/^I should see his recipe$/) do
  save_and_open_page
  expect(page).to have_content(/Lasagna/)
end

Then(/^I see a "(.*?)" recipe page$/) do |arg1|
  visit chef_recipe_path(@chef, @recipe)
end
