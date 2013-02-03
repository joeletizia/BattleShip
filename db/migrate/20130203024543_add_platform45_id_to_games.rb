class AddPlatform45IdToGames < ActiveRecord::Migration
  def change
    add_column :games, :platform45_id, :integer
    add_column :games, :player_name, :string
    add_column :games, :player_email, :string
  end
end
