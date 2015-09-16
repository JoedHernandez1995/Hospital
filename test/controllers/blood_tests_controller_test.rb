require 'test_helper'

class BloodTestsControllerTest < ActionController::TestCase
  setup do
    @blood_test = blood_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_test" do
    assert_difference('BloodTest.count') do
      post :create, blood_test: { eosinophils: @blood_test.eosinophils, exam_cost: @blood_test.exam_cost, examination_date: @blood_test.examination_date, hcm: @blood_test.hcm, hemoglobin: @blood_test.hemoglobin, leukocytes: @blood_test.leukocytes, lymphocytes: @blood_test.lymphocytes, microbiologist_id: @blood_test.microbiologist_id, neutrophils: @blood_test.neutrophils, patient_id: @blood_test.patient_id, platelets: @blood_test.platelets, rbc: @blood_test.rbc, vcm: @blood_test.vcm, vsg: @blood_test.vsg }
    end

    assert_redirected_to blood_test_path(assigns(:blood_test))
  end

  test "should show blood_test" do
    get :show, id: @blood_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_test
    assert_response :success
  end

  test "should update blood_test" do
    patch :update, id: @blood_test, blood_test: { eosinophils: @blood_test.eosinophils, exam_cost: @blood_test.exam_cost, examination_date: @blood_test.examination_date, hcm: @blood_test.hcm, hemoglobin: @blood_test.hemoglobin, leukocytes: @blood_test.leukocytes, lymphocytes: @blood_test.lymphocytes, microbiologist_id: @blood_test.microbiologist_id, neutrophils: @blood_test.neutrophils, patient_id: @blood_test.patient_id, platelets: @blood_test.platelets, rbc: @blood_test.rbc, vcm: @blood_test.vcm, vsg: @blood_test.vsg }
    assert_redirected_to blood_test_path(assigns(:blood_test))
  end

  test "should destroy blood_test" do
    assert_difference('BloodTest.count', -1) do
      delete :destroy, id: @blood_test
    end

    assert_redirected_to blood_tests_path
  end
end
