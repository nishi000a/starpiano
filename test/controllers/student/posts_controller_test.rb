require "test_helper"

class Student::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get student_posts_show_url
    assert_response :success
  end
end
