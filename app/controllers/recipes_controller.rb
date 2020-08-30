class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        if params[:order] && params[:order] == "least ingredients"
                @recipes = Recipe.least_ingredients
        elsif params[:order] && params[:order] == "most ingredients"
                @recipes = Recipe.most_ingredients
        end
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.valid?
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id, :order)
    end
end
