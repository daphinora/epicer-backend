class RecipesController < ApplicationController
    skip_before_action :require_login
    def index
        recipes = Recipe.all
        render json: recipes, except: [:created_at, :updated_at]
    end
 
    def show
        @recipe = Recipe.find(params[:id])
        render json: @recipe, except: [:created_at, :updated_at]
    end

    def new
        recipe = Recipe.new
    end

    def create
        recipe = Recipe.create(recipe_params)
        menu_recipe = MenuRecipe.create(menu_recipe_params)
        render json: recipe, menu_recipe
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :cook_time, :ref_id)
    end

    # def menu_recipe_params
    #     params.require(:menu_recipe).permit(:recipe_id, :menu_id, :weekday, :meal, :date)
    # end

end
