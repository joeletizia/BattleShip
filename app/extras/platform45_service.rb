require 'rest-client'

module BattleShip
  class Platform45
    def shoot(game_id, x, y)
      response = JSON.load RestClient.post(@shoot_addr, 
                                            {"id"=>"#{game_id}", "x"=>'#{x}',
                                            "y"=>'#{y}'}.to_json).body
    end
    
    def register(name, email)
      response = JSON.load RestClient.post(@reg_addr, 
                                            {"name" => 'Joe Letizia', 
                                            "email"=>'joe.letizia@gmail.com'}.to_json).body
    end
    
    def initialize
      @reg_addr = "http://battle.platform45.com/register"
      @shoot_addr = "http://battle.platform45.com/nuke"
    end
  end
end