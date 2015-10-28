class Exercise < ActiveRecord::Base
    has_many :calories
  validates :description, :presence => true
end
