class UserRecipesController < ApplicationController
    def create
        userrecipes = UserRecipe.create(userrecipe_params)
        render json: userrecipe, except: [:updated_at, :created_at]
    end
    
    def index
        userrecipes = UserRecipe.all
        render :json => userrecipe, :include => ['student', 'doctor']
    end

    def destroy
        @userrecipe = UserRecipe.find(params[:id])
        @userrecipe.destroy
        render json: @userrecipe, except: [:updated_at, :created_at]
    end

    private
    def userrecipe_params
        params.require(:userrecipe).permit(:id, :student_id, :doctor_id, :start_date, :length, :accepted)
    end
end
end
