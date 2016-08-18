Feature: Contact Us Page
As an end user that is curious about BookingBug
I want to browse a contact us page
So that I can find contact details
And get in touch to find out more

	Scernario: Accurate Address
		Given I am on the BookingBug Contact Us page
		When I navigate to the Contact Us page
		Then I should see an accurate post code "EC1R 5EJ"
