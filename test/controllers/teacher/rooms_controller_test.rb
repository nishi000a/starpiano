require "test_helper"

class Teacher::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get teacher_rooms_show_url
    assert_response :success
  end
end
