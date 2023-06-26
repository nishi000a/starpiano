require "test_helper"

class Teacher::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_posts_index_url
    assert_response :success
  end

  test "should get new" do
    get teacher_posts_new_url
    assert_response :success
  end

  test "should get create" do
    get teacher_posts_create_url
    assert_response :success
  end

  test "should get show" do
    get teacher_posts_show_url
    assert_response :success
  end

  test "should get edit" do
    get teacher_posts_edit_url
    assert_response :success
  end
end
