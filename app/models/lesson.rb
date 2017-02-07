class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :section
end
