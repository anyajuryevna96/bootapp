require "application_system_test_case"

class SportTypesTest < ApplicationSystemTestCase
  setup do
    @sport_type = SportType.create!(name: "Running", default_duration: 30)
  end

  test "visiting the index" do
    visit sport_types_path

    assert_selector "h1", text: "Sport Type List"
    assert_text "Running"
    assert_link "New Type"
    assert_button "Delete"
  end
end
