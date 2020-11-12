class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail, :ingredient, presence: true
  # validates [:cocktail_id, :ingredient_id], uniqueness: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
