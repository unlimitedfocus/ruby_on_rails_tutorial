require 'test_helper'

class RootTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get '/'
    assert_select "h1", "Hello!"
    assert_response :success
  end
end
