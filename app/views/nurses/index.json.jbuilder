json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :nurse_id, :name, :lastname, :undergraduate_university, :hourly_wage
  json.url nurse_url(nurse, format: :json)
end
