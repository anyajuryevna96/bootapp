require "test_helper"

class DailyActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daily_activities_path
    assert_response :success
  end

  test "should get show" do
    d = fixture(:daily_activities, :one)
    get daily_activity_path(d)
    assert_response :success
  end

  test "should get destroy" do
    d = fixture(:daily_activities, :one)
    delete daily_activity_path(d)
    assert_redirected_to daily_activities_path
  end
end
