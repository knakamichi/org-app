require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title("Home")
    assert_equal full_title("Help")
    assert_equal full_title("About")
    assert_equal full_title("Contact")
    assert_equal full_title("Sign up")
  end
end
