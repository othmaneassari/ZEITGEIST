class Category < ApplicationRecord
  has_many :markets, dependent: :destroy
end
