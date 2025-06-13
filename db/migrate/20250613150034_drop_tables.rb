class DropTables < ActiveRecord::Migration[8.0]
  def change
    drop_table :products
    drop_table :sport_types
  end
end
