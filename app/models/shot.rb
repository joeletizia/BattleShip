class Shot < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :hit?, :x, :y, :player
end
