class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, :description, :ingredients, :instructions, :cook_time, :prep_time, :servings, :difficulty, :category, presence: true

  validates :difficulty, inclusion: { in: %W(Easy Medium Hard), message: "%{value} is not a valid difficulty" }

  validates :category, inclusion: { in: %w(Dinner Dessert Breakfast), message: "%{value} is not a valid category" }

  validates :servings, :cook_time, :prep_time, numericality: true

  validates :servings, inclusion: { in: (1..100), message: "Enter a number from 1 to 100"}
end
