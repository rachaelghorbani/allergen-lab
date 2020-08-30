class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :user_allergic_tos
    has_many :users, through: :user_allergic_tos

    validates :name, presence: true, uniqueness: true

end
