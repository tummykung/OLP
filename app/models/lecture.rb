class Lecture < ActiveRecord::Base
  attr_accessible :number, :title, :video_id
  belongs_to :course
end
