json.array!(@illnesses) do |illness|
  json.extract! illness, :id, :main_symptom, :initial_date, :pain_soother, :pain_intensifier, :peek_hour, :patient_id, :hospitalization_id, :visit_id
  json.url illness_url(illness, format: :json)
end
