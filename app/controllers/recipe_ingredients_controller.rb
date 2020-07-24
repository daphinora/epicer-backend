class RecipeIngredientsController < ApplicationController
        def index
        recipe_ingredient = RecipeIngredient.all
        render json: recipe_ingredient, except: [:created_at, :updated_at]
    end
 
    def show
        @recipe_ingredient = RecipeIngredient.find(params[:id])
        render json: @recipe_ingredient, except: [:created_at, :updated_at]
    end

    def new
        recipe_ingredient = RecipeIngredient.new
    end

    def create
        recipe_ingredient = RecipeIngredient.create(recipe_ingredient_params)
        render json: recipe_ingredient
    end

    private

    def recipe_ingredient_params
        params.require(:recipe_ingredient).permit(:recipe_id, :ingredient_id, :amount)
    end
end
