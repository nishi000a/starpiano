require "test_helper"

class Teacher::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get teacher_homes_top_url
    assert_response :success
  end

end
