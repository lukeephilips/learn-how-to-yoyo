class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :name, :presence => true

  def next
    return self.number + 1
  end

  def previous
    return self.number - 1
  end
end
