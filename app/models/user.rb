class User < ApplicationRecord
    has_secure_password
    has_many :user_recipes
    has_many :user_menus
    has_many :menus, through: :user_menus
end
