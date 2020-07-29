class IngredientsController < ApplicationController
    skip_before_action :require_login
    def index
        ingredients = Ingredient.all
        render json: ingredients, except: [:created_at, :updated_at]
    end
 
    def show
        @ingredient = Ingredient.find(params[:id])
        render json: @ingredient, except: [:created_at, :updated_at]
    end

    def new
        ingredient = Ingredient.new
    end

    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :image)
    end
end
