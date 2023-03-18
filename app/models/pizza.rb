class Pizza < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews
  has_many :orders

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :restaurant_id, presence: true

    def ingredients
    self[:ingredients].split(', ')
  end

  def pizza_name
    self[:name]
  end

  def pizza_ingredients
    self.ingredients
  end
end
