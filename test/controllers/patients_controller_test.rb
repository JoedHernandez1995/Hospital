require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { address: @patient.address, allergies: @patient.allergies, birth_date: @patient.birth_date, blood_type: @patient.blood_type, cellphone_number: @patient.cellphone_number, email: @patient.email, emergency_contact: @patient.emergency_contact, lastname: @patient.lastname, marital_status: @patient.marital_status, name: @patient.name, occupation: @patient.occupation, patient_id: @patient.patient_id, phone_number: @patient.phone_number, registry_date: @patient.registry_date, sex: @patient.sex }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { address: @patient.address, allergies: @patient.allergies, birth_date: @patient.birth_date, blood_type: @patient.blood_type, cellphone_number: @patient.cellphone_number, email: @patient.email, emergency_contact: @patient.emergency_contact, lastname: @patient.lastname, marital_status: @patient.marital_status, name: @patient.name, occupation: @patient.occupation, patient_id: @patient.patient_id, phone_number: @patient.phone_number, registry_date: @patient.registry_date, sex: @patient.sex }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
