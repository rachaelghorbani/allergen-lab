class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :recipe_ingredients, through: :recipes
    has_many :user_allergic_tos
    has_many :ingredients, through: :user_allergic_tos

    def ingredients 
        self.recipe_ingredients.map do |recipe_ingredient|
            recipe_ingredient.ingredient
        end
    end
end
