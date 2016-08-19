require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :ff do |app|
 Capybara::Selenium::Driver.new(app, :browser => :ff)
end

Capybara.configure do |config|
  config.default_driver = :ff
  config.app_host   = 'http://localhost'
end

World(Capybara)


 Before('@e2e_coi @e2e_nex') do
  ::Capybara.default_driver = :ff
::Capybara.default_wait_time = 90  
end
