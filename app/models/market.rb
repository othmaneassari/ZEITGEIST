class Market < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews
  has_many :ingredients, through: :markets_ingredients

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
