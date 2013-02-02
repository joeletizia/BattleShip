class AddBeginningFieldsToShot < ActiveRecord::Migration
  def up
    add_column :shots, :hit, :boolean
    add_column :shots, :x, :integer
    add_column :shots, :y, :integer
  end
  
  def down
    remove_column :shots, :hit, :boolean
    remove_column :shots, :x, :integer
    remove_column :shots, :y, :integer
  end
end
