json.array!(@blood_tests) do |blood_test|
  json.extract! blood_test, :id, :examination_date, :rbc, :hemoglobin, :vcm, :hcm, :lymphocytes, :leukocytes, :neutrophils, :eosinophils, :platelets, :vsg, :patient_id, :microbiologist_id, :exam_cost
  json.url blood_test_url(blood_test, format: :json)
end
