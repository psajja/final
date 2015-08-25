class State < ActiveRecord::Base

  has_many :generators 

  validates_presence_of :name
  
end
