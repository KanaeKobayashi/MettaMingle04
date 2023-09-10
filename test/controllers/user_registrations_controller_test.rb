require "test_helper"

class UserRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    new_user_registration_path
    assert_response :success
  end
end
