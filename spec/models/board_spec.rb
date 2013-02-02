require 'spec_helper'

describe Board do
  let(:board) {Board.create!}
  subject {board}
  
  its("hits.length") {should == 0}
  its("misses.length") {should == 0}
  its("unknown.length") {should == 100}
  
  it {should respond_to(:player)}
  
end
