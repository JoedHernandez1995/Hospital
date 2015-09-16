class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :nurse_id
      t.string :name
      t.string :lastname
      t.string :undergraduate_university
      t.float :hourly_wage

      t.timestamps null: false
    end
  end
end
