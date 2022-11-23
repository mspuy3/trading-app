require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index_user" do
    get admin_index_user_url
    assert_response :success
  end

  test "should get edit_user" do
    get admin_edit_user_url
    assert_response :success
  end

  test "should get show_user" do
    get admin_show_user_url
    assert_response :success
  end

  test "should get new_user" do
    get admin_new_user_url
    assert_response :success
  end

  test "should get _form_user" do
    get admin__form_user_url
    assert_response :success
  end

  test "should get pending_user" do
    get admin_pending_user_url
    assert_response :success
  end

  test "should get index_transactions" do
    get admin_index_transactions_url
    assert_response :success
  end
end
