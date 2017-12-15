require 'test_helper'

class SurgeryConditionsControllerTest < ActionController::TestCase
  setup do
    @surgery_condition = surgery_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgery_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery_condition" do
    assert_difference('SurgeryCondition.count') do
      post :create, surgery_condition: { name: @surgery_condition.name, surgery_type_id: @surgery_condition.surgery_type_id }
    end

    assert_redirected_to surgery_condition_path(assigns(:surgery_condition))
  end

  test "should show surgery_condition" do
    get :show, id: @surgery_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery_condition
    assert_response :success
  end

  test "should update surgery_condition" do
    patch :update, id: @surgery_condition, surgery_condition: { name: @surgery_condition.name, surgery_type_id: @surgery_condition.surgery_type_id }
    assert_redirected_to surgery_condition_path(assigns(:surgery_condition))
  end

  test "should destroy surgery_condition" do
    assert_difference('SurgeryCondition.count', -1) do
      delete :destroy, id: @surgery_condition
    end

    assert_redirected_to surgery_conditions_path
  end
end
