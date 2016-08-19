
Given(/^I am on the BookingBug Contact Us page$/) do
 visit('https://www.bookingbug.co.uk/contact')
     expect(page).to have_content("Customer support enquiries", wait:30)
end

When(/^I navigate to the Contact Us page$/) do
  puts 'step 2'
end

Then(/^I should see an accurate post code "([^"]*)"$/) do |arg1|
  puts 'step 3'
end
When(/^I submit just an email address and some message text$/) do
  fill_in('Email', :with => 'cmilano@bookingbug.com')
  fill_in('Notes__c', :with => 'blah blah blah')
  sleep 2
end

When(/^all other fields are blank$/) do
binding.pry
find('button.mktoButton', wait:5).click
end

Then(/^I should see errors about other required fields$/) do
  expect(page).to have_content('This field is required')
end

