require 'test_helper'

class RequestDetailsControllerTest < ActionController::TestCase
  setup do
    @request_detail = request_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_detail" do
    assert_difference('RequestDetail.count') do
      post :create, request_detail: { comment: @request_detail.comment, pet_id: @request_detail.pet_id, request_id: @request_detail.request_id, service_id: @request_detail.service_id }
    end

    assert_redirected_to request_detail_path(assigns(:request_detail))
  end

  test "should show request_detail" do
    get :show, id: @request_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request_detail
    assert_response :success
  end

  test "should update request_detail" do
    patch :update, id: @request_detail, request_detail: { comment: @request_detail.comment, pet_id: @request_detail.pet_id, request_id: @request_detail.request_id, service_id: @request_detail.service_id }
    assert_redirected_to request_detail_path(assigns(:request_detail))
  end

  test "should destroy request_detail" do
    assert_difference('RequestDetail.count', -1) do
      delete :destroy, id: @request_detail
    end

    assert_redirected_to request_details_path
  end
end
