require 'test_helper'

class DriverControllerTest < ActionDispatch::IntegrationTest
  test "should get apply" do
    get driver_apply_url
    assert_response :success
  end

end
