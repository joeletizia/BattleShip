require 'spec_helper'

describe Game do
  let(:game){Game.new}
  
  subject {game}
  
  its("boards.length") {should == 2}
  its(:status) {should_not == 1}
  its(:winner) {should be_nil}
  
end
