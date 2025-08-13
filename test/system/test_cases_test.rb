require "application_system_test_case"

class TestCasesTest < ApplicationSystemTestCase
  setup do
    @test_case = test_cases(:one)
  end

  test "visiting the index" do
    visit test_cases_url
    assert_selector "h1", text: "Test cases"
  end

  test "should create test case" do
    visit test_cases_url
    click_on "New test case"

    click_on "Create Test case"

    assert_text "Test case was successfully created"
    click_on "Back"
  end

  test "should update Test case" do
    visit test_case_url(@test_case)
    click_on "Edit this test case", match: :first

    click_on "Update Test case"

    assert_text "Test case was successfully updated"
    click_on "Back"
  end

  test "should destroy Test case" do
    visit test_case_url(@test_case)
    accept_confirm { click_on "Destroy this test case", match: :first }

    assert_text "Test case was successfully destroyed"
  end
end
