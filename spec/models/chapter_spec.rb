require "rails_helper"

describe Chapter do
  it {should validate_presence_of :title}
  it {should have_many :sections}
end
