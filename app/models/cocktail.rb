class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo, dependent: :destroy

  validates :name, uniqueness: true
  validates :name, presence: true
end
