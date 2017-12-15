require 'test_helper'

class ShfActualConditionsControllerTest < ActionController::TestCase
  setup do
    @shf_actual_condition = shf_actual_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shf_actual_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shf_actual_condition" do
    assert_difference('ShfActualCondition.count') do
      post :create, shf_actual_condition: { name: @shf_actual_condition.name, surg_hosp_form_id: @shf_actual_condition.surg_hosp_form_id }
    end

    assert_redirected_to shf_actual_condition_path(assigns(:shf_actual_condition))
  end

  test "should show shf_actual_condition" do
    get :show, id: @shf_actual_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shf_actual_condition
    assert_response :success
  end

  test "should update shf_actual_condition" do
    patch :update, id: @shf_actual_condition, shf_actual_condition: { name: @shf_actual_condition.name, surg_hosp_form_id: @shf_actual_condition.surg_hosp_form_id }
    assert_redirected_to shf_actual_condition_path(assigns(:shf_actual_condition))
  end

  test "should destroy shf_actual_condition" do
    assert_difference('ShfActualCondition.count', -1) do
      delete :destroy, id: @shf_actual_condition
    end

    assert_redirected_to shf_actual_conditions_path
  end
end
