require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get profiles_update_url
    assert_response :success
  end

  test "should get correct_user" do
    get profiles_correct_user_url
    assert_response :success
  end
end
