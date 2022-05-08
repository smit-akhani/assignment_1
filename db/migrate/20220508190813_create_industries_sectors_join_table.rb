class CreateIndustriesSectorsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :industries, :sectors
  end
end
