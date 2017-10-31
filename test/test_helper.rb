require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'capybara/minitest'

class ActiveSupport::TestCase
  include Capybara::DSL
  include Capybara::Minitest::Assertions
  # include Devise::TestHelpers

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
	def teardown
		Capybara.reset_sessions!
		Capybara.use_default_driver
	end
end
