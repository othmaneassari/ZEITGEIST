class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :markets, dependent: :destroy
  # has_many :reviews, dependent: :destroy
  has_many :favorite_markets, dependent: :destroy
  has_many :reviews, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
