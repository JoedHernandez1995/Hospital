class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patient_id
      t.string :name
      t.string :lastname
      t.date :registry_date
      t.text :address
      t.string :blood_type
      t.string :sex
      t.string :marital_status
      t.date :birth_date
      t.string :phone_number
      t.string :cellphone_number
      t.string :email
      t.string :emergency_contact
      t.string :occupation
      t.text :allergies

      t.timestamps null: false
    end
  end
end
