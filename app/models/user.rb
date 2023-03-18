class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    # validations
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence:true, uniqueness: true

end
