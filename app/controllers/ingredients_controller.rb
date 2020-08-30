class IngredientsController < ApplicationController
    def index
        UserAllergicTo.group(:ingredient_id).order(ingredient_id: :desc)
        # @users = User.order(allergic_to: :desc)
        # ingredients_array = @users.map do |user|
        #     user.allergic_to
        # end.uniq
        # ingredients_array.map do |ingredient_name|
        #     Ingredient.find_by(name: ingredient_name)
        # end
    end
    
    def show
        @ingredient = Ingredient.find(params[:id])
    end
end
