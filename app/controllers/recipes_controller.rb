class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe, except: [:updated_at, :created_at]
    end

    def create 
       recipe = Recipe.create(recipe_params) 
       render json: recipe, except: [:updated_at, :created_at]
    end

    def updated
        recipe = Recipe.find_by(id: params[:id])
        recipe.update(recipe_params)
        render json: recipe, except: [:updated_at, :created_at]
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        render json: recipe, except: [:updated_at, :created_at]
    end

    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :description, :image, :video)
    end
end
