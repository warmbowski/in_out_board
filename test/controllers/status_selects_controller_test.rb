require 'test_helper'

class StatusSelectsControllerTest < ActionController::TestCase
  setup do
    @status_select = status_selects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_selects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_select" do
    assert_difference('StatusSelect.count') do
      post :create, status_select: { icon: @status_select.icon, status: @status_select.status, status_type: @status_select.status_type }
    end

    assert_redirected_to status_select_path(assigns(:status_select))
  end

  test "should show status_select" do
    get :show, id: @status_select
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_select
    assert_response :success
  end

  test "should update status_select" do
    patch :update, id: @status_select, status_select: { icon: @status_select.icon, status: @status_select.status, status_type: @status_select.status_type }
    assert_redirected_to status_select_path(assigns(:status_select))
  end

  test "should destroy status_select" do
    assert_difference('StatusSelect.count', -1) do
      delete :destroy, id: @status_select
    end

    assert_redirected_to status_selects_path
  end
end
