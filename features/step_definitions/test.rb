
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
