class Recipe < ApplicationRecord
    has_many :steps
    has_many :user_recipes
    has_many :menu_recipes
    has_many :menus, through: :menu_recipes
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
end
