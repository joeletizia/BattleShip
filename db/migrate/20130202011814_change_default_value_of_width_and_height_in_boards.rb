class ChangeDefaultValueOfWidthAndHeightInBoards < ActiveRecord::Migration
  def change
    change_column :boards, :height, :integer, :default => 10
    change_column :boards, :width, :integer, :default => 10
  end
end
