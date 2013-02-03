require 'spec_helper'

describe Ship do
  before do
    @ship = Ship.new
  end
  subject {@ship}
  
  context 'should respond to its members' do
    it {should respond_to(:length)}
    it {should respond_to(:type)}
    it {should respond_to(:hits)}
    it {should respond_to(:hull_status)}
    it {should respond_to(:start)}
    it {should respond_to(:board)}
  end
  
  context 'after initialization' do
    subject {Ship.new(:start => [1,2].to_json, :length => 2)}
    coords = [BattleShip::Coordinates.new(1,2), BattleShip::Coordinates.new(1,3)]
    
    context 'the location coordinates should be correct' do
      its(:location_coordinates) {should == coords}
    end    
  end
  
  
  
end
