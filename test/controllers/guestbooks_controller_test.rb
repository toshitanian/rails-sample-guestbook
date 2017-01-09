require 'test_helper'

class GuestbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guestbook = guestbooks(:one)
  end

  test "should get index" do
    get guestbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_guestbook_url
    assert_response :success
  end

  test "should create guestbook" do
    assert_difference('Guestbook.count') do
      post guestbooks_url, params: { guestbook: { message: @guestbook.message, name: @guestbook.name } }
    end

    assert_redirected_to guestbook_url(Guestbook.last)
  end

  test "should show guestbook" do
    get guestbook_url(@guestbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_guestbook_url(@guestbook)
    assert_response :success
  end

  test "should update guestbook" do
    patch guestbook_url(@guestbook), params: { guestbook: { message: @guestbook.message, name: @guestbook.name } }
    assert_redirected_to guestbook_url(@guestbook)
  end

  test "should destroy guestbook" do
    assert_difference('Guestbook.count', -1) do
      delete guestbook_url(@guestbook)
    end

    assert_redirected_to guestbooks_url
  end
end
