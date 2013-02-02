require 'json'

class ChangeDefaultValueOfDataInBoards < ActiveRecord::Migration
  def change
    change_column :boards, :data, :text, :default => Array.new(10){Array.new(10)}.to_json, :limit => 1000
  end
end
