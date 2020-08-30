class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

   def total_ingredients
    self.ingredients.count
   end

   def self.least_ingredients
    Recipe.all.sort_by do |recipe|
        recipe.total_ingredients
        end
   end

   def self.most_ingredients
    Recipe.all.sort_by do |recipe|
        recipe.total_ingredients
        end.reverse
   end
end
