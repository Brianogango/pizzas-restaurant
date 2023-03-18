class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  belongs_to :pizza

  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..10 }
  validates :comment, presence: true, length: { minimum: 1, maximum: 100 }
  validates :user_id, presence: true, numericality: {only_integer:true}
  validates :restaurant_id, presence: true, numericality: {only_integer:true}
  validates :pizza_id, presence: true, numericality: {only_integer:true}
end
