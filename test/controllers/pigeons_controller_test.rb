require "test_helper"

class PigeonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pigeons_index_url
    assert_response :success
  end

  test "should get show" do
    get pigeons_show_url
    assert_response :success
  end

  test "should get new" do
    get pigeons_new_url
    assert_response :success
  end

  test "should get create" do
    get pigeons_create_url
    assert_response :success
  end

  test "should get edit" do
    get pigeons_edit_url
    assert_response :success
  end

  test "should get update" do
    get pigeons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pigeons_destroy_url
    assert_response :success
  end
end
