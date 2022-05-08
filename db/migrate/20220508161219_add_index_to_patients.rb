class AddIndexToPatients < ActiveRecord::Migration[7.0]
  def change
    add_index :patients, :email, unique: true
    add_index :physicians, :email, unique: true
    add_index :physicians, :unique_id, unique: true
    add_index :sectors, :name, unique: true
    add_index :industries, :email, unique: true
    add_index :industries, :registration_number, unique: true
  end
end
