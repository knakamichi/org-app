require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # enables testing for the right title in /site_layout_test.rb (full_title helper), but writing only this will cause it to miss typos in the base_title. Fix this by writing a direct test of the full_title helper by creating a file to test the app helper.
  include ApplicationHelper

  # Add more helper methods to be used by all tests here...
end
