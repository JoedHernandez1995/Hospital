json.array!(@microbiologists) do |microbiologist|
  json.extract! microbiologist, :id, :microbiologist_id, :name, :lastname, :birth_date, :undergraduate_university, :postgraduate_university, :postgraduate_major
  json.url microbiologist_url(microbiologist, format: :json)
end
