require "test_helper"

class Student::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get student_rooms_show_url
    assert_response :success
  end
end
