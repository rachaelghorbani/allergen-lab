class IngredientsController < ApplicationController
    def index
        # Stat.where(:skin_id => skin_id).joins(:item).order("items.rating DESC")
        Ingredient.where(:name => name).joins(:user_allergic_to).order("user_allergic_to.ingredient_id DESC")
        # ua = UserAllergicTo.most_allergic

        # ua.map do |ua|
        #     Ingredient.find(ua.ingredient_id).name
        # end 
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
