require 'test_helper'

class BridgesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bridges_index_url
    assert_response :success
  end

  test "should get new" do
    get bridges_new_url
    assert_response :success
  end

  test "should get show" do
    get bridges_show_url
    assert_response :success
  end

  test "should get create" do
    get bridges_create_url
    assert_response :success
  end

  test "should get edit" do
    get bridges_edit_url
    assert_response :success
  end

  test "should get update" do
    get bridges_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bridges_destroy_url
    assert_response :success
  end

end
