class Rto < ActiveRecord::Base

  belongs_to :state
  belongs_to :generator

  # def actor
  #   Actor.find(self.actor_id)
  # end

end
