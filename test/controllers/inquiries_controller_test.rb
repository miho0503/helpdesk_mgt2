require 'test_helper'

class InquiriesControllerTest < ActionController::TestCase
  setup do
    @inquiry = inquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry" do
    assert_difference('Inquiry.count') do
      post :create, inquiry: { Dept_id: @inquiry.Dept_id, User_id: @inquiry.User_id, accepted_datetime: @inquiry.accepted_datetime, contents: @inquiry.contents, inquired_person: @inquiry.inquired_person }
    end

    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should show inquiry" do
    get :show, id: @inquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry
    assert_response :success
  end

  test "should update inquiry" do
    patch :update, id: @inquiry, inquiry: { Dept_id: @inquiry.Dept_id, User_id: @inquiry.User_id, accepted_datetime: @inquiry.accepted_datetime, contents: @inquiry.contents, inquired_person: @inquiry.inquired_person }
    assert_redirected_to inquiry_path(assigns(:inquiry))
  end

  test "should destroy inquiry" do
    assert_difference('Inquiry.count', -1) do
      delete :destroy, id: @inquiry
    end

    assert_redirected_to inquiries_path
  end
end
