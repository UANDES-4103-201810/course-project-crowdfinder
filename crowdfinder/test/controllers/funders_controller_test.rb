require 'test_helper'

class FundersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get funders_index_url
    assert_response :success
  end

  test "should get create" do
    get funders_create_url
    assert_response :success
  end

  test "should get new" do
    get funders_new_url
    assert_response :success
  end

  test "should get edit" do
    get funders_edit_url
    assert_response :success
  end

  test "should get show" do
    get funders_show_url
    assert_response :success
  end

  test "should get update" do
    get funders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get funders_destroy_url
    assert_response :success
  end

end
