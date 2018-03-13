Given(/^I am a twitter user on the login page$/) do
  visit('https://twitter.com/login')
  page.should have_content('Log in to Twitter')
end

When(/^I sign in/) do
 fill_in "Phone, email or username", :with => "chasemils"
 fill_in "Password", :with => "dummypassword"
 find_button('Log in').click
 page.should have_content('Moments')

end

And(/^I am on the homepage$/) do
page.should have_content('Moments')
end

Then(/^I should see the number of notifications I have$/) do
  if page.has_css?('span[class="count-inner"]')
	$numberofnotifications = find('span[class="count-inner"]').text
else
	$numberofnotifications = '0'
end
  puts "You have #{$numberofnotifications} notifications"
end
