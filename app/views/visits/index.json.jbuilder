json.array!(@visits) do |visit|
  json.extract! visit, :id, :visit_date, :hospitalized, :doctor_id
  json.url visit_url(visit, format: :json)
end
