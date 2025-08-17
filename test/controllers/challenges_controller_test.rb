require "test_helper"

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_challenge_url
    assert_response :success
  end

  test "should create challenge" do
    assert_difference("Challenge.count") do
      post challenges_url, params: { challenge: { description: @challenge.description, difficulty: @challenge.difficulty, input_format: @challenge.input_format, memory_limit: @challenge.memory_limit, output_format: @challenge.output_format, published: @challenge.published, sample_input: @challenge.sample_input, sample_output: @challenge.sample_output, slug: @challenge.slug, solution_code: @challenge.solution_code, source_url: @challenge.source_url, starter_code: @challenge.starter_code, time_limit: @challenge.time_limit, title: @challenge.title } }
    end

    assert_redirected_to challenge_url(Challenge.last)
  end

  test "should show challenge" do
    get challenge_url(@challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_challenge_url(@challenge)
    assert_response :success
  end

  test "should update challenge" do
    patch challenge_url(@challenge), params: { challenge: { description: @challenge.description, difficulty: @challenge.difficulty, input_format: @challenge.input_format, memory_limit: @challenge.memory_limit, output_format: @challenge.output_format, published: @challenge.published, sample_input: @challenge.sample_input, sample_output: @challenge.sample_output, slug: @challenge.slug, solution_code: @challenge.solution_code, source_url: @challenge.source_url, starter_code: @challenge.starter_code, time_limit: @challenge.time_limit, title: @challenge.title } }
    assert_redirected_to challenge_url(@challenge)
  end

  test "should destroy challenge" do
    assert_difference("Challenge.count", -1) do
      delete challenge_url(@challenge)
    end

    assert_redirected_to challenges_url
  end
end
