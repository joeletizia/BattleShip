require 'spec_helper'
require 'platform45_service'

describe BattleShip::Platform45 do
  let(:api) {BattleShip::Platform45.new}
  subject{api}
  
  it 'should be able to register and shoot' do
    response = api.register('joe','joe.letizia@gmail.com')
    response.length.should == 3
    
    shot_rep = api.shoot(response["id"],1,5)
    shot_rep.should include("status")
    shot_rep.should include("x")
    shot_rep.should include("y")
  end
  
end
