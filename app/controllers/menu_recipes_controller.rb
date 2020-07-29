class MenuRecipesController < ApplicationController
    skip_before_action :require_login
    def index
        if params[:menu]
            menu_recipes = MenuRecipe.where("menu_id = #{params[:menu]}")
        else
            menu_recipes = MenuRecipe.all
        end
        render json: menu_recipes, except: [:created_at, :updated_at], include: [:recipe]
    end
 
    def show
        @menu_recipe = MenuRecipe.find(params[:id])
        render json: @menu_recipe, except: [:created_at, :updated_at]
    end

    def new
        menu_recipe = MenuRecipe.new
    end

    def create
        menu_recipe = MenuRecipe.create(menu_recipe_params)
        render json: menu_recipe
    end

    def destroy
        menu_recipe = MenuRecipe.find(params[:id])
        menu_recipe.destroy
    end

    private

    def menu_recipe_params
        params.require(:menu_recipe).permit(:menu_id, :recipe_id, :meal, :weekday)
    end
end
