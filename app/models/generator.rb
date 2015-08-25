class Generator < ActiveRecord::Base

  belongs_to :fuel
  belongs_to :state

  validates_presence_of :queue
  validates_presence_of :mw


end
