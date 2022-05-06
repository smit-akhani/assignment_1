class AddIndexToPatients < ActiveRecord::Migration[7.0]
  def change
    add_index :patients, :email, unique: true
    add_index :physicians, :email, unique: true
    add_index :physicians, :unique_id, unique: true
  end
end
