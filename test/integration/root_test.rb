require 'test_helper'

class RootTest < ActionDispatch::IntegrationTest
  test "can not see the welcome page without login" do
    get '/'
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Log in"
  end
end
