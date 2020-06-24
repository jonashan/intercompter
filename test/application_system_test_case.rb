require "test_helper"

Capybara.register_driver :chrome_headless do |app|
  chrome_capabilities = ::Selenium::WebDriver::Remote::Capabilities.chrome('goog:chromeOptions' => { 'args': %w[no-sandbox headless disable-gpu window-size=1400,1400] })

  if ENV['HUB_URL']
    Capybara::Selenium::Driver.new(app,
                                   browser: :remote,
                                   url: ENV['HUB_URL'],
                                   desired_capabilities: chrome_capabilities)
  else
    Capybara::Selenium::Driver.new(app,
                                   browser: :chrome,
                                   desired_capabilities: chrome_capabilities)
  end
end

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  parallelize(workers: 1)
  
  driven_by :chrome_headless
end
