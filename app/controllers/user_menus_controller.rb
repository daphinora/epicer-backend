class UserMenusController < ApplicationController
    def index
        user_recipe = UserMenu.all
        render json: user_recipe, except: [:created_at, :updated_at]
    end
 
    def show
        @user_recipe = UserMenu.find(params[:id])
        render json: @user_recipe, except: [:created_at, :updated_at]
    end

    def new
        user_recipe = UserMenu.new
    end

    def create
        user_recipe = UserMenu.create(user_recipe_params)
        render json: user_recipe
    end

    private

    def user_recipe_params
        params.require(:user_recipe).permit(:user_id, :recipe_id)
    end
end
