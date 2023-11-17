class Market < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews
  has_many :ingredients, through: :markets_ingredients
end
