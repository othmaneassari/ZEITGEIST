class Ingredient < ApplicationRecord
  has_many :markets, through: :markets_ingredients
end
