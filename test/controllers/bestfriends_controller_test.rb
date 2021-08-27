require "test_helper"

class BestfriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bestfriend = bestfriends(:one)
  end

  test "should get index" do
    get bestfriends_url
    assert_response :success
  end

  test "should get new" do
    get new_bestfriend_url
    assert_response :success
  end

  test "should create bestfriend" do
    assert_difference('Bestfriend.count') do
      post bestfriends_url, params: { bestfriend: { email: @bestfriend.email, first_name: @bestfriend.first_name, last_name: @bestfriend.last_name, phone: @bestfriend.phone, twitter: @bestfriend.twitter } }
    end

    assert_redirected_to bestfriend_url(Bestfriend.last)
  end

  test "should show bestfriend" do
    get bestfriend_url(@bestfriend)
    assert_response :success
  end

  test "should get edit" do
    get edit_bestfriend_url(@bestfriend)
    assert_response :success
  end

  test "should update bestfriend" do
    patch bestfriend_url(@bestfriend), params: { bestfriend: { email: @bestfriend.email, first_name: @bestfriend.first_name, last_name: @bestfriend.last_name, phone: @bestfriend.phone, twitter: @bestfriend.twitter } }
    assert_redirected_to bestfriend_url(@bestfriend)
  end

  test "should destroy bestfriend" do
    assert_difference('Bestfriend.count', -1) do
      delete bestfriend_url(@bestfriend)
    end

    assert_redirected_to bestfriends_url
  end
end
