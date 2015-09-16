class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :visit_date
      t.boolean :hospitalized
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
