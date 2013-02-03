module BattleShip
  class ArtificialIntelligence
    
    def self.Infer_Next_Shot(shot_array, board)
      case correct_shot_count(shot_array)
      when 0
        #random
        open_pegs = board.unknown
        
        open_pegs[rand (0...open_pegs.length)]
      when 1
        #guess a new direction
        last = shot_array[-1]
        
        x = rand (0..4)
        
        case x
        when 0
          #go north
          return BattleShip::Coordinates.new(shot_array[-1].x, shot_array.y + 1)
        when 1
          #go east
          BattleShip::Coordinates.new(shot_array[-1].x + 1, shot_array.y)
        when 2
          #go south
          BattleShip::Coordinates.new(shot_array[-1].x, shot_array.y - 1)
        when 3
          #go west
          BattleShip::Coordinates.new(shot_array[-1].x - 1, shot_array.y)
        end
      when (2...100)
        #we have a direction
        x_diff = shot_array[-1].x - shot_array[-2].x
        y_diff = shot_array[-1].y - shot_array[-2].y
        
        if x_diff > y_diff
          return BattleShip::Coordinates.new(shot_array[-1].x + 1, shot_array.y)
        else
          return BattleShip::Coordinates.new(shot_array[-1].x, shot_array.y + 1)
        end
      else
        #something got screwed up
      end
    end
    
    private
    
      def self.correct_shot_count(shot_array)
        n = 0
        shot_array.reverse.each do |shot|
          if shot.hit? && !shot.sinker
            n+=1
          else
            return n
          end
        end
        return n
      end
      
  end
end