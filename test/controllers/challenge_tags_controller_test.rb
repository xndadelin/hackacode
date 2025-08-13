require "test_helper"

class ChallengeTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge_tag = challenge_tags(:one)
  end

  test "should get index" do
    get challenge_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_challenge_tag_url
    assert_response :success
  end

  test "should create challenge_tag" do
    assert_difference("ChallengeTag.count") do
      post challenge_tags_url, params: { challenge_tag: {} }
    end

    assert_redirected_to challenge_tag_url(ChallengeTag.last)
  end

  test "should show challenge_tag" do
    get challenge_tag_url(@challenge_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_challenge_tag_url(@challenge_tag)
    assert_response :success
  end

  test "should update challenge_tag" do
    patch challenge_tag_url(@challenge_tag), params: { challenge_tag: {} }
    assert_redirected_to challenge_tag_url(@challenge_tag)
  end

  test "should destroy challenge_tag" do
    assert_difference("ChallengeTag.count", -1) do
      delete challenge_tag_url(@challenge_tag)
    end

    assert_redirected_to challenge_tags_url
  end
end
