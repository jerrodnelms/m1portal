require 'test_helper'

class ShfDnmcConditionsControllerTest < ActionController::TestCase
  setup do
    @shf_dnmc_condition = shf_dnmc_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shf_dnmc_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shf_dnmc_condition" do
    assert_difference('ShfDnmcCondition.count') do
      post :create, shf_dnmc_condition: { name: @shf_dnmc_condition.name, surg_hosp_form_id: @shf_dnmc_condition.surg_hosp_form_id }
    end

    assert_redirected_to shf_dnmc_condition_path(assigns(:shf_dnmc_condition))
  end

  test "should show shf_dnmc_condition" do
    get :show, id: @shf_dnmc_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shf_dnmc_condition
    assert_response :success
  end

  test "should update shf_dnmc_condition" do
    patch :update, id: @shf_dnmc_condition, shf_dnmc_condition: { name: @shf_dnmc_condition.name, surg_hosp_form_id: @shf_dnmc_condition.surg_hosp_form_id }
    assert_redirected_to shf_dnmc_condition_path(assigns(:shf_dnmc_condition))
  end

  test "should destroy shf_dnmc_condition" do
    assert_difference('ShfDnmcCondition.count', -1) do
      delete :destroy, id: @shf_dnmc_condition
    end

    assert_redirected_to shf_dnmc_conditions_path
  end
end
