class Game < ActiveRecord::Base
  # attr_accessible :title, :body
  after_initialize :after_initialize
  validate :only_two_players
  
  attr_accessible :winner, :status, :platform45_id, :player_name, :player_email
  
  has_many :boards
  
  private
  
    def only_two_players
      errors.add(:boards,"There must be two and only two players") unless boards.length == 2
    end
    
    def after_initialize
      self.boards << Board.new(:player => "Platform45")
      self.boards << Board.new(:player => "Joe")
    end
  
end
