require 'test_helper'

class DoctorsControllerTest < ActionController::TestCase
  setup do
    @doctor = doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor" do
    assert_difference('Doctor.count') do
      post :create, doctor: { birth_date: @doctor.birth_date, doctor_id: @doctor.doctor_id, email: @doctor.email, lastname: @doctor.lastname, name: @doctor.name, specialty: @doctor.specialty, specialty_university: @doctor.specialty_university, undergraduate_university: @doctor.undergraduate_university, visit_cost: @doctor.visit_cost }
    end

    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should show doctor" do
    get :show, id: @doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor
    assert_response :success
  end

  test "should update doctor" do
    patch :update, id: @doctor, doctor: { birth_date: @doctor.birth_date, doctor_id: @doctor.doctor_id, email: @doctor.email, lastname: @doctor.lastname, name: @doctor.name, specialty: @doctor.specialty, specialty_university: @doctor.specialty_university, undergraduate_university: @doctor.undergraduate_university, visit_cost: @doctor.visit_cost }
    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should destroy doctor" do
    assert_difference('Doctor.count', -1) do
      delete :destroy, id: @doctor
    end

    assert_redirected_to doctors_path
  end
end
