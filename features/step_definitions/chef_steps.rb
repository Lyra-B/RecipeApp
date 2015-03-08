Given(/^that a chef "(.*?)" exists$/) do |name|
  @chef = Chef.new(:name => name)
  @chef.save!
end

Given(/^a recipe for "(.*?)"$/) do |name|
  @chef = Chef.new(:name => name)
  @chef.recipes << Recipe.new(:title => "Lasagna")
  @recipe = @chef.recipes.first
  @recipe.save!
  @chef.save!
end

When(/^I am on the chef show page for "(.*?)"$/) do |name|
  visit chef_path(@chef.id)
end

When(/^I select the recipe "(.*?)"$/) do |recipe|
  click_link "#{recipe}"
end

Then(/^I should see his recipe$/) do
  expect(page).to have_content(/Lasagna/)
end

Then(/^I see a "(.*?)" recipe page$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
