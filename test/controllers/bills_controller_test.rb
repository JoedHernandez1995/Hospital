require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { bill_number: @bill.bill_number, blood_chemistry_test: @bill.blood_chemistry_test, blood_test: @bill.blood_test, doctor_fees: @bill.doctor_fees, hospitalization: @bill.hospitalization, issue_date: @bill.issue_date, patient_id: @bill.patient_id, total: @bill.total }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should update bill" do
    patch :update, id: @bill, bill: { bill_number: @bill.bill_number, blood_chemistry_test: @bill.blood_chemistry_test, blood_test: @bill.blood_test, doctor_fees: @bill.doctor_fees, hospitalization: @bill.hospitalization, issue_date: @bill.issue_date, patient_id: @bill.patient_id, total: @bill.total }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_redirected_to bills_path
  end
end
