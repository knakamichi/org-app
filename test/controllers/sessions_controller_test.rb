require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path #routes のurlに合わせる
    assert_response :success
  end

end
