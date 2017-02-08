class Chapter < ActiveRecord::Base
  validates :title, :presence => true
  has_many :sections
end
