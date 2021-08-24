require 'test_helper'

class MyPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get my_pages_home_url
    assert_response :success
  end

end
