require 'test_helper'

class HiensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hien = hiens(:one)
  end

  test "should get index" do
    get hiens_url
    assert_response :success
  end

  test "should get new" do
    get new_hien_url
    assert_response :success
  end

  test "should create hien" do
    assert_difference('Hien.count') do
      post hiens_url, params: { hien: { username: @hien.username } }
    end

    assert_redirected_to hien_url(Hien.last)
  end

  test "should show hien" do
    get hien_url(@hien)
    assert_response :success
  end

  test "should get edit" do
    get edit_hien_url(@hien)
    assert_response :success
  end

  test "should update hien" do
    patch hien_url(@hien), params: { hien: { username: @hien.username } }
    assert_redirected_to hien_url(@hien)
  end

  test "should destroy hien" do
    assert_difference('Hien.count', -1) do
      delete hien_url(@hien)
    end

    assert_redirected_to hiens_url
  end
end
