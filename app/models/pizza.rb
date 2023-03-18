class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :restaurant_id, presence: true
end
