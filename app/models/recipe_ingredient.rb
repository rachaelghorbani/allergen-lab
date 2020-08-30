class RecipeIngredient < ApplicationRecord
    belongs_to :ingredient 
    belongs_to :recipe 

    # def self.search_by_ingredient(ingredient)
    #     ingredient_id = Ingredient.find_by(name: ingredient).id
    #     recipe_ingredients = RecipeIngredient.find_by(ingredient_id: ingredient_id)
    #     recipe_ingredients.recipe
    #     # .where('ingredient.name = ?', ingredient)
    # end
end
