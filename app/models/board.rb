require 'json'

class Board < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :data, :height, :width
  
  has_many :shots
  
  def hits
    ret = Array.new
    
    pegs = JSON.load self.data
    
    for n in (0...self.width.to_i)
      for j in (0...self.height.to_i)
        ret << BattleShip::Coordinates.new(n,j) if pegs[n][j] == 1
      end
    end
    
    ret
  end
  
  def unknown
    ret = Array.new
    
    pegs = JSON.load self.data
    
    
    for n in (0...self.width.to_i)
      for j in (0...self.height.to_i)
        ret << BattleShip::Coordinates.new(n,j) if pegs[n][j].nil?
      end
    end
    
    ret
  end
  
  def misses
    ret = Array.new
    
    pegs = JSON.load self.data
    for n in (0...self.width.to_i)
      for j in (0...self.height.to_i)
        ret << BattleShip::Coordinates.new(n,j) if pegs[n][j] == 0
      end
    end
    
    ret
  end
end
