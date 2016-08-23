require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :ff do |app|
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :ff
  config.app_host   = 'http://localhost'
end

World(Capybara)


