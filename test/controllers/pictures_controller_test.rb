require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pictures_index_url
    assert_response :success
  end

  test "should get show" do
    get pictures_show_url
    assert_response :success
  end

  test "should get edit" do
    get pictures_edit_url
    assert_response :success
  end

  test "should get update" do
    get pictures_update_url
    assert_response :success
  end

  test "should get delete" do
    get pictures_delete_url
    assert_response :success
  end

end
