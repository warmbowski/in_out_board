require 'test_helper'

class AddTitleToEmployeesControllerTest < ActionController::TestCase
  setup do
    @add_title_to_employee = add_title_to_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_title_to_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_title_to_employee" do
    assert_difference('AddTitleToEmployee.count') do
      post :create, add_title_to_employee: { title: @add_title_to_employee.title }
    end

    assert_redirected_to add_title_to_employee_path(assigns(:add_title_to_employee))
  end

  test "should show add_title_to_employee" do
    get :show, id: @add_title_to_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_title_to_employee
    assert_response :success
  end

  test "should update add_title_to_employee" do
    patch :update, id: @add_title_to_employee, add_title_to_employee: { title: @add_title_to_employee.title }
    assert_redirected_to add_title_to_employee_path(assigns(:add_title_to_employee))
  end

  test "should destroy add_title_to_employee" do
    assert_difference('AddTitleToEmployee.count', -1) do
      delete :destroy, id: @add_title_to_employee
    end

    assert_redirected_to add_title_to_employees_path
  end
end
