class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :physician, null: false, foreign_key: true
      t.date :appointment_date, null: false

      t.timestamps
    end
  end
end
