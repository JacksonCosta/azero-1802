require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless # => Firefox
end

Capybara.default_max_wait_time = 10