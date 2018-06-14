require 'test_helper'

class MerchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merch = merches(:one)
  end

  test "should get index" do
    get merches_url
    assert_response :success
  end

  test "should get new" do
    get new_merch_url
    assert_response :success
  end

  test "should create merch" do
    assert_difference('Merch.count') do
      post merches_url, params: { merch: { description: @merch.description, name: @merch.name, promise_id: @merch.promise_id } }
    end

    assert_redirected_to merch_url(Merch.last)
  end

  test "should show merch" do
    get merch_url(@merch)
    assert_response :success
  end

  test "should get edit" do
    get edit_merch_url(@merch)
    assert_response :success
  end

  test "should update merch" do
    patch merch_url(@merch), params: { merch: { description: @merch.description, name: @merch.name, promise_id: @merch.promise_id } }
    assert_redirected_to merch_url(@merch)
  end

  test "should destroy merch" do
    assert_difference('Merch.count', -1) do
      delete merch_url(@merch)
    end

    assert_redirected_to merches_url
  end
end
