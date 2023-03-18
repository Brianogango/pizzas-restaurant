class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users ,through: :reviews

    validates :name, presence: true, uniqueness: true
    validates :address, presence: true
    validates :cuisine, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

end
