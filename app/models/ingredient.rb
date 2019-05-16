class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, trough: :doses, dependent: :restrict

  validates :name, presence: true, uniqueness: true
end
