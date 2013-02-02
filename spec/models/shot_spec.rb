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
end
