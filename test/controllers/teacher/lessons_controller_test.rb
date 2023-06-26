require "test_helper"

class Teacher::LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get teacher_lessons_show_url
    assert_response :success
  end
end
