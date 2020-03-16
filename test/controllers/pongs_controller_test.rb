require 'test_helper'

class PongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pong = pongs(:one)
  end

  test "should get index" do
    get pongs_url
    assert_response :success
  end

  test "should get new" do
    get new_pong_url
    assert_response :success
  end

  test "should create pong" do
    assert_difference('Pong.count') do
      post pongs_url, params: { pong: {  } }
    end

    assert_redirected_to pong_url(Pong.last)
  end

  test "should show pong" do
    get pong_url(@pong)
    assert_response :success
  end

  test "should get edit" do
    get edit_pong_url(@pong)
    assert_response :success
  end

  test "should update pong" do
    patch pong_url(@pong), params: { pong: {  } }
    assert_redirected_to pong_url(@pong)
  end

  test "should destroy pong" do
    assert_difference('Pong.count', -1) do
      delete pong_url(@pong)
    end

    assert_redirected_to pongs_url
  end
end
