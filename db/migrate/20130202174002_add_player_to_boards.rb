class AddPlayerToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :player, :integer
  end
end
