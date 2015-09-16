class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctor_id
      t.string :name
      t.string :lastname
      t.string :specialty
      t.string :undergraduate_university
      t.string :specialty_university
      t.date :birth_date
      t.string :email
      t.float :visit_cost

      t.timestamps null: false
    end
  end
end
