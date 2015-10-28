class Calory< ActiveRecord::Base
  belongs_to :food
  belongs_to :exercise

  validates :amount, :presence => true
end
