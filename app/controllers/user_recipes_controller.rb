class UserRecipesController < ApplicationController
    def index
        user_recipes = UserRecipe.all
        render json: user_recipes, except: [:updated_at, :created_at],
        include: [:user, :recipe]
    end

    def create
        userrecipe = UserRecipe.create(userrecipe_params)
        render json: user_recipe, except: [:updated_at, :created_at]
    end
    

    def destroy
        user_recipe = UserRecipe.find(params[:id])
        user_recipe.destroy
        render json: user_recipe, except: [:updated_at, :created_at]
    end

    private

    def userrecipe_params
        params.require(:user_recipe).permit(:id, :user_id, :recipe_id, :favorites, :likes)
    end
end
