require 'test_helper'

class IllnessesControllerTest < ActionController::TestCase
  setup do
    @illness = illnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illness" do
    assert_difference('Illness.count') do
      post :create, illness: { hospitalization_id: @illness.hospitalization_id, initial_date: @illness.initial_date, main_symptom: @illness.main_symptom, pain_intensifier: @illness.pain_intensifier, pain_soother: @illness.pain_soother, patient_id: @illness.patient_id, peek_hour: @illness.peek_hour, visit_id: @illness.visit_id }
    end

    assert_redirected_to illness_path(assigns(:illness))
  end

  test "should show illness" do
    get :show, id: @illness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illness
    assert_response :success
  end

  test "should update illness" do
    patch :update, id: @illness, illness: { hospitalization_id: @illness.hospitalization_id, initial_date: @illness.initial_date, main_symptom: @illness.main_symptom, pain_intensifier: @illness.pain_intensifier, pain_soother: @illness.pain_soother, patient_id: @illness.patient_id, peek_hour: @illness.peek_hour, visit_id: @illness.visit_id }
    assert_redirected_to illness_path(assigns(:illness))
  end

  test "should destroy illness" do
    assert_difference('Illness.count', -1) do
      delete :destroy, id: @illness
    end

    assert_redirected_to illnesses_path
  end
end
