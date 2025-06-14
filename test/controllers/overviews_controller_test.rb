require "test_helper"

class OverviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get overview_path
    assert_response :success
  end
end
