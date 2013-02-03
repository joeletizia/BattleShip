require 'json'
require 'Coordinates'

class Ship < ActiveRecord::Base
  include BattleShip
  
  belongs_to :board
  
  attr_accessible  :type, :start, :orientation, :length
  
  def hits
    n = 0
    self.location_coordinates.each {|point| n += 1 if self.board[point.x][point.y] == 1}
    n
  end
  
  def hull_status
    coords = self.location_coordinates
    ret = Hash.new
    coords.each do |point| 
      if self.board.pegs[point.x][point.y] == 1
        ret[point] = 1
      else
        ret[point] = 0
      end
    end
    
    ret
  end
  
  def location_coordinates
    ret = Array.new
    
    start_position_array = JSON.load self.start
    
    ret << BattleShip::Coordinates.new(start_position_array[0], start_position_array[1])
    
    for n in (1...self.length)
      if self.orientation == "long"
        ret << BattleShip::Coordinates.new(start_position_array[0] + n, start_position_array[1])
      else
        ret << BattleShip::Coordinates.new(start_position_array[0], start_position_array[1] + n)      
      end
    end
    
    ret
  end
  
  
end
