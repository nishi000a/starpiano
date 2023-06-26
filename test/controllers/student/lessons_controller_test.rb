require "test_helper"

class Student::LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_lessons_new_url
    assert_response :success
  end

  test "should get confirm" do
    get student_lessons_confirm_url
    assert_response :success
  end

  test "should get complete" do
    get student_lessons_complete_url
    assert_response :success
  end

  test "should get index" do
    get student_lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get student_lessons_show_url
    assert_response :success
  end
end
