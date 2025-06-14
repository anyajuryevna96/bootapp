require "test_helper"

class DailyActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daily_activities_path
    assert_response :success
  end

  test "should create activity" do
    st = sport_types(:walking)
    assert_difference "DailyActivity.count", 1 do
      post daily_activities_path, params: { daily_activity: { duration: 60, sport_type_id: st.id } }
      assert_redirected_to daily_activity_path(DailyActivity.last)
    end
  end

  test "should get show" do
    d = daily_activities(:sigulda)
    get daily_activity_path(d)
    assert_response :success
  end

  test "should get destroy" do
     d = daily_activities(:sigulda)
     assert_difference "DailyActivity.count", -1 do
     delete daily_activity_path(d)
     assert_redirected_to daily_activities_path
    end
  end
end
