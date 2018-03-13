Feature: Twitter notifications
Scenario:Checking twitter notifications
Given I am a twitter user on the login page
When I sign in
And I am on the homepage
Then I should see the number of notifications I have
