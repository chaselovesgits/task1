require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :chrome do |app|
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.app_host   = 'http://localhost'
end

World(Capybara)


 Before('@e2e_coi @e2e_nex') do
  ::Capybara.default_driver = :chrome
::Capybara.default_wait_time = 90  
end
