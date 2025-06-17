require "test_helper"

class SportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport_type = SportType.create!(name: "Cycling", default_duration: 45)
  end

  test "should get index" do
    get sport_types_url
    assert_response :success
    assert_select "h1", "Sport Type List"
  end

  test "should create sport type and redirect to index" do
    assert_difference("SportType.count") do
      post sport_types_url, params: {
        sport_type: { name: "Swimming", default_duration: 60 }
      }
    end

    assert_redirected_to sport_types_path
  end
end
