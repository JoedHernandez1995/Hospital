class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.integer :days_hospitalized
      t.integer :room_number
      t.date :admission_date
      t.references :doctor, index: true, foreign_key: true
      t.float :cost

      t.timestamps null: false
    end
  end
end
