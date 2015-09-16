class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :bill_number
      t.references :patient, index: true, foreign_key: true
      t.date :issue_date
      t.float :hospitalization
      t.float :blood_test
      t.float :doctor_fees
      t.float :blood_chemistry_test
      t.float :total

      t.timestamps null: false
    end
  end
end
