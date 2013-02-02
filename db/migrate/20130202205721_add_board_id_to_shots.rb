class AddBoardIdToShots < ActiveRecord::Migration
  def change
    add_column :shots, :board_id, :integer
  end
end
