class User < ApplicationRecord
    has_many :reviews
    has_many :reviewed_beers, through: :reviews, source: :beer # renaming a relationships
end
