class AddSinkerToShots < ActiveRecord::Migration
  def change
    add_column :shots, :sinker, :boolean
  end
end
