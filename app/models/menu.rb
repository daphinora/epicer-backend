class Menu < ApplicationRecord
    has_many :user_menus
    has_many :users, through: :user_menus
    has_many :menu_recipes
    has_many :recipes, through: :menu_recipes
end
