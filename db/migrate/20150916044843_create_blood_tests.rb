class CreateBloodTests < ActiveRecord::Migration
  def change
    create_table :blood_tests do |t|
      t.date :examination_date
      t.float :rbc
      t.float :hemoglobin
      t.float :vcm
      t.float :hcm
      t.float :lymphocytes
      t.float :leukocytes
      t.float :neutrophils
      t.float :eosinophils
      t.float :platelets
      t.float :vsg
      t.references :patient, index: true, foreign_key: true
      t.references :microbiologist, index: true, foreign_key: true
      t.float :exam_cost

      t.timestamps null: false
    end
  end
end
