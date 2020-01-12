class User < ApplicationRecord
    has_many :reviews
    has_many :reviewed_beers, through: :reviews, source: :beer # renaming a relationships
    validates :username, uniqueness: true, presence: true
    has_secure_password
end
