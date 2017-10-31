require 'test_helper'

class RootTest < ActionDispatch::IntegrationTest
  test "can not see the welcome page without login" do
    get '/'
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Log in"
  end

  test "should logged in when login success" do
    visit '/'

    user = users(:one)
    fill_in "Email", with: user.email
    fill_in "Password", with: 'password'
    click_button "Log in"
    page.has_content? 'Hello!'
  end
end
