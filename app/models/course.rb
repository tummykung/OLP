class Course < ActiveRecord::Base
  attr_accessible :name, :professor, :time_offer
  has_many :lectures
  has_many :users
end
