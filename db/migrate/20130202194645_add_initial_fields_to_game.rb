class AddInitialFieldsToGame < ActiveRecord::Migration
  def change
    add_column :games, :winner, :string
    add_column :games, :status, :integer
    add_column :boards, :game_id, :integer
  end
end
