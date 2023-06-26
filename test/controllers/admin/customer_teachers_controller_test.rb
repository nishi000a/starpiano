require "test_helper"

class Admin::CustomerTeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_customer_teachers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_customer_teachers_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_customer_teachers_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_customer_teachers_update_url
    assert_response :success
  end
end
