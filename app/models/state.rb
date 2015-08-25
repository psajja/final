class State < ActiveRecord::Base

  has_many :generators

  # has_secure_password

  # validates :name, :email, :password, presence: true
  # validates :password, confirmation: true

end
