class CreateIllnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :main_symptom
      t.date :initial_date
      t.string :pain_soother
      t.string :pain_intensifier
      t.time :peek_hour
      t.references :patient, index: true, foreign_key: true
      t.references :hospitalization, index: true, foreign_key: true
      t.references :visit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
