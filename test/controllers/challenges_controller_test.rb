require "test_helper"

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get challenges_new_url
    assert_response :success
  end

  test "should get view" do
    get challenges_view_url
    assert_response :success
  end
end
