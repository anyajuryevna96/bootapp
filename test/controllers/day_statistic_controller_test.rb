require "test_helper"

class DayStatisticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get day_statistic_index_url
    assert_response :success
  end
end
