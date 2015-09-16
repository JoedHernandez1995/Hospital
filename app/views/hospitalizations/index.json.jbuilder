json.array!(@hospitalizations) do |hospitalization|
  json.extract! hospitalization, :id, :days_hospitalized, :room_number, :admission_date, :doctor_id, :cost
  json.url hospitalization_url(hospitalization, format: :json)
end
