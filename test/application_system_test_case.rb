require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  url = ENV['SELENIUM_REMOTE_URL']
  Capybara.server_host = 'web'
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: { url: url }
end
