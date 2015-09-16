class CreateMicrobiologists < ActiveRecord::Migration
  def change
    create_table :microbiologists do |t|
      t.string :microbiologist_id
      t.string :name
      t.string :lastname
      t.date :birth_date
      t.string :undergraduate_university
      t.string :postgraduate_university
      t.string :postgraduate_major

      t.timestamps null: false
    end
  end
end
