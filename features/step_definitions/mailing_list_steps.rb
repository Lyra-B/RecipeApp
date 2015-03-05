When(/^I enter my name and email address$/) do
  fill_in 'Name', :with => 'Glykeria'
  fill_in 'Email', :with => 'glykeriapeppa@gmail.com'
end

When(/^I join the mailing list$/) do
  click_button "Join the mailing list"
end

Then(/^I should be signed\-up to the mailing list$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" in the flash notice$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end