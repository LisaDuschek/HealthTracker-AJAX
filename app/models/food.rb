class Food < ActiveRecord::Base
    has_many :calories
  validates :name, :presence => true
end
