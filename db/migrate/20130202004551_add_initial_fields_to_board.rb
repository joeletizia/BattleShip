class AddInitialFieldsToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :height, :integer
    add_column :boards, :width, :integer
    add_column :boards, :data, :text
  end
end
