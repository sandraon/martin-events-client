require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get api_about_url
    assert_response :success
  end

end
