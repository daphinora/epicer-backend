class RecipesController < ApplicationController
    skip_before_action :require_login
    def index
        if params[:ref_id]
            recipes = Recipe.where("ref_id = #{params[:ref_id]}")
        else
            recipes = Recipe.all
        end
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
        menu_recipe = MenuRecipe.create(recipe_id: recipe.id, menu_id: params["menu_id"], meal: params["meal"], weekday: params["weekday"])
        render json: recipe
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :cook_time, :ref_id)
    end

end
