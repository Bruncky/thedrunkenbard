# frozen_string_literal: true

# Dose Model
class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true

  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
