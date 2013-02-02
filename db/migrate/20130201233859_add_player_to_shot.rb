class AddPlayerToShot < ActiveRecord::Migration
  def change
    add_column :shots, :player, :integer
  end
end
