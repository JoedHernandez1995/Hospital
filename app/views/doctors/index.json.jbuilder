json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctor_id, :name, :lastname, :specialty, :undergraduate_university, :specialty_university, :birth_date, :email, :visit_cost
  json.url doctor_url(doctor, format: :json)
end
