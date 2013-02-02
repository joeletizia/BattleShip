class Shot < ActiveRecord::Base
  # attr_accessible :title, :body
  validate :shot_within_grid
  
  attr_accessible :hit?, :x, :y, :player
  belongs_to :board
  
  private
  
    def shot_within_grid
      if self.board.nil?
        errors.add(:board, "the board must be set")
        return
      end
      errors.add(:shot, "the coordinates of the shot must be within the range of the board") unless x_within_range && y_within_range
    end
    
    def x_within_range
      if self.try(:x).nil?
        return false
      else
        self.x < self.board.width && self.x >= 0
      end
    end
    
    def y_within_range
      if self.try(:y).nil?
        return false
      else
        self.y < self.board.height && self.y >= 0 unless y.nil?
      end  
    end
end
