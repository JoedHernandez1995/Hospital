json.array!(@patients) do |patient|
  json.extract! patient, :id, :patient_id, :name, :lastname, :registry_date, :address, :blood_type, :sex, :marital_status, :birth_date, :phone_number, :cellphone_number, :email, :emergency_contact, :occupation, :allergies
  json.url patient_url(patient, format: :json)
end
