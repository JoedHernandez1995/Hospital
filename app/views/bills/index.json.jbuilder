json.array!(@bills) do |bill|
  json.extract! bill, :id, :bill_number, :patient_id, :issue_date, :hospitalization, :blood_test, :doctor_fees, :blood_chemistry_test, :total
  json.url bill_url(bill, format: :json)
end
