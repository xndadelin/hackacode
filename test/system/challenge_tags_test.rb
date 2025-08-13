require "application_system_test_case"

class ChallengeTagsTest < ApplicationSystemTestCase
  setup do
    @challenge_tag = challenge_tags(:one)
  end

  test "visiting the index" do
    visit challenge_tags_url
    assert_selector "h1", text: "Challenge tags"
  end

  test "should create challenge tag" do
    visit challenge_tags_url
    click_on "New challenge tag"

    click_on "Create Challenge tag"

    assert_text "Challenge tag was successfully created"
    click_on "Back"
  end

  test "should update Challenge tag" do
    visit challenge_tag_url(@challenge_tag)
    click_on "Edit this challenge tag", match: :first

    click_on "Update Challenge tag"

    assert_text "Challenge tag was successfully updated"
    click_on "Back"
  end

  test "should destroy Challenge tag" do
    visit challenge_tag_url(@challenge_tag)
    accept_confirm { click_on "Destroy this challenge tag", match: :first }

    assert_text "Challenge tag was successfully destroyed"
  end
end
