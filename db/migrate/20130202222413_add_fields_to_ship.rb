class AddFieldsToShip < ActiveRecord::Migration
  def change
    add_column :ships, :type, :string
    add_column :ships, :start, :string
    add_column :ships, :orientation, :string
    add_column :ships, :length, :integer
  end
end
