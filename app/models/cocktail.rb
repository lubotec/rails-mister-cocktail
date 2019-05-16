class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, trough: :doses

  validates :name, presence: true, uniqueness: true
end
