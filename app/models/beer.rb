class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :user # creator of it
  has_many :reviews
  has_many :users, through :reviews # people who have reviewed it
end 
