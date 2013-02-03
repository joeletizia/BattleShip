module BattleShip
  class Coordinates
    attr_accessor :x,:y
    def initialize(x,y)
      @x = x
      @y = y
    end
    
    def ==( other )
      if @x == other.x && @y == other.y
        return true 
      end
      false
    end
    
  end
end