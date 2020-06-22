ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/reporters'

# Use `fetch` to fail loudly if these variables aren't set. We might relax this 
# and set defaults at some point, but for the moment we want to make sure we didn't 
# miss a step.
Capybara.server_host = ENV.fetch("CAPYBARA_SERVER_HOST")
Capybara.server_port = ENV.fetch("CAPYBARA_SERVER_PORT")

Minitest::Reporters.use!(
  Minitest::Reporters::ProgressReporter.new(color: true),
    ENV,
    Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
