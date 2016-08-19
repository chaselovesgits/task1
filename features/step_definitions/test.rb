Given(/^I am on the BookingBug Contact Us page$/) do
 visit('https://www.bookingbug.co.uk/contact')
     expect(page).to have_content("Customer support enquiries", wait:30)
end

When(/^I navigate to the Contact Us page$/) do
  puts 'step 2'
end

Then(/^I should see an accurate post code "(EC1R 5EJ)"$/) do |arg1|
  puts 'step 3'
end
When(/^I submit just an email address and some message text$/) do
  fill_in('Email', :with => 'cmilano@bookingbug.com')
  fill_in('Notes__c', :with => 'blah blah blah')
end

When(/^all other fields are blank$/) do
  page.find(:xpath, '//*[@id="mktoForm_1039"]/div[8]/span/button').click
end

Then(/^I should see errors about other required fields$/) do
  page.should have_content('This field is required.')
end


