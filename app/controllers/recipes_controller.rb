class RecipesController < ApplicationController

    def index
        recipes = recipe.all
        render json: recipes
    end

    def create 
       recipe = recipe.create(recipe_params) 
       render json: recipe, except: [:updated_at, :created_at]
    end


    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :description, :image, :video)
    end
end
