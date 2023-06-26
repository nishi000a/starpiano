require "test_helper"

class Teacher::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get teacher_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get teacher_customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get teacher_customers_update_url
    assert_response :success
  end

  test "should get withdraw" do
    get teacher_customers_withdraw_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get teacher_customers_unsubscribe_url
    assert_response :success
  end
end
