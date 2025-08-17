require "application_system_test_case"

class ChallengesTest < ApplicationSystemTestCase
  setup do
    @challenge = challenges(:one)
  end

  test "visiting the index" do
    visit challenges_url
    assert_selector "h1", text: "Challenges"
  end

  test "should create challenge" do
    visit challenges_url
    click_on "New challenge"

    fill_in "Description", with: @challenge.description
    fill_in "Difficulty", with: @challenge.difficulty
    fill_in "Input format", with: @challenge.input_format
    fill_in "Memory limit", with: @challenge.memory_limit
    fill_in "Output format", with: @challenge.output_format
    check "Published" if @challenge.published
    fill_in "Sample input", with: @challenge.sample_input
    fill_in "Sample output", with: @challenge.sample_output
    fill_in "Slug", with: @challenge.slug
    fill_in "Solution code", with: @challenge.solution_code
    fill_in "Source url", with: @challenge.source_url
    fill_in "Starter code", with: @challenge.starter_code
    fill_in "Time limit", with: @challenge.time_limit
    fill_in "Title", with: @challenge.title
    click_on "Create Challenge"

    assert_text "Challenge was successfully created"
    click_on "Back"
  end

  test "should update Challenge" do
    visit challenge_url(@challenge)
    click_on "Edit this challenge", match: :first

    fill_in "Description", with: @challenge.description
    fill_in "Difficulty", with: @challenge.difficulty
    fill_in "Input format", with: @challenge.input_format
    fill_in "Memory limit", with: @challenge.memory_limit
    fill_in "Output format", with: @challenge.output_format
    check "Published" if @challenge.published
    fill_in "Sample input", with: @challenge.sample_input
    fill_in "Sample output", with: @challenge.sample_output
    fill_in "Slug", with: @challenge.slug
    fill_in "Solution code", with: @challenge.solution_code
    fill_in "Source url", with: @challenge.source_url
    fill_in "Starter code", with: @challenge.starter_code
    fill_in "Time limit", with: @challenge.time_limit
    fill_in "Title", with: @challenge.title
    click_on "Update Challenge"

    assert_text "Challenge was successfully updated"
    click_on "Back"
  end

  test "should destroy Challenge" do
    visit challenge_url(@challenge)
    accept_confirm { click_on "Destroy this challenge", match: :first }

    assert_text "Challenge was successfully destroyed"
  end
end
