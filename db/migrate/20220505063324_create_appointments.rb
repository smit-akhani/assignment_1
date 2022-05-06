class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :physician_id
      t.date :appointment_date

      t.timestamps
    end
  end
end
