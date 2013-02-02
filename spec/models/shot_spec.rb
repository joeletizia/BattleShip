require 'spec_helper'

describe Shot do
  before do
    @shot = Shot.new
  end
  
  subject {@shot}
  
  it {should respond_to(:player)}
  it {should respond_to(:hit?)}
  it {should respond_to(:x)}
  it {should respond_to(:y)}
  
  
  context 'when a shot is initialized' do
    its(:x) {should be_nil}
    its(:y) {should be_nil}
    
    its(:hit?) {should be_false}
  end 
  
  context 'when a shot is fired correctly' do 
    before(:all) do 
      @game = Game.create
    end
    
    it 'should be valid' do
      @game.boards[0].shots << Shot.new(:x => 5, :y => 3)
      @game.boards[0].shots.each{|x| x.should be_valid}
    end    
  end
  
  context 'when a shot is fired incorrectly' do
    before(:all) do 
      @game = Game.create
    end
    
    it 'should not be valid' do
      @game.boards[0].shots << Shot.new(:x => 15)
      @game.boards[0].shots << Shot.new()
      @game.boards[0].shots << Shot.new(:x => -3)
      
      @game.boards[0].shots << Shot.new(:y => -3)
      @game.boards[0].shots << Shot.new(:y => 1555)
      
      @game.boards[0].shots << Shot.new(:y => 3)
      @game.boards[0].shots << Shot.new(:x => 3)
      
      @game.boards[0].shots.each{|x| x.should_not be_valid}
    end
  end
end
