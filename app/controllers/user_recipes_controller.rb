class UserRecipesController < ApplicationController
    skip_before_action :require_login
    def index
        user_recipes = UserRecipe.all
        render json: user_recipes, except: [:created_at, :updated_at]
    end
 
    def show
        @user_recipe = UserRecipe.find(params[:id])
        render json: @user_recipe, except: [:created_at, :updated_at]
    end

    def new
        user_recipe = UserRecipe.new
    end

    def create
        user_recipe = UserRecipe.create(user_recipe_params)
        render json: user_recipe
    end

    private

    def user_recipe_params
        params.require(:user_recipe).permit(:user_id, :recipe_id)
    end
end
