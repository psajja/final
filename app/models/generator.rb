class Generator < ActiveRecord::Base

  belongs_to :fuel

  validates_presence_of :queue
  validates_presence_of :mw


end
