require 'test_helper'

class MerchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get merchs_index_url
    assert_response :success
  end

  test "should get create" do
    get merchs_create_url
    assert_response :success
  end

  test "should get new" do
    get merchs_new_url
    assert_response :success
  end

  test "should get edit" do
    get merchs_edit_url
    assert_response :success
  end

  test "should get show" do
    get merchs_show_url
    assert_response :success
  end

  test "should get update" do
    get merchs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get merchs_destroy_url
    assert_response :success
  end

end
