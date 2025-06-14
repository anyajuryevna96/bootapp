require "test_helper"

class DailyActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daily_activities_index_url
    assert_response :success
  end

  test "should get show" do
    get daily_activities_show_url
    assert_response :success
  end

  test "should get destroy" do
    get daily_activities_destroy_url
    assert_response :success
  end
end
