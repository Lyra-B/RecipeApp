When(/^I enter my name and email address$/) do
  fill_in 'Name', :with => 'Glykeria'
  fill_in 'Email', :with => 'glykeriapeppa@gmail.com'
end

When(/^I join the mailing list$/) do
  click_button "Join the mailing list!"
end

Then(/^I should be signed\-up to the mailing list$/) do
  expect(User.count).to eq(1)
end

Then(/^I should see "(.*?)" in the flash notice$/) do |message|
  expect(page).to have_content(message)
end

Then(/^I should receive a welcome email$/) do
  expect(ActionMailer::Base.deliveries.empty?).to eq(false)
end