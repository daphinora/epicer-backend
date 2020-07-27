class UserMenusController < ApplicationController
    skip_before_action :require_login
    def index
        if params[:user]
            user_menus = UserMenu.where("user_id = #{params[:user]}")
        else
            user_menus = UserMenu.all
        end
        render json: user_menus, except: [:created_at, :updated_at]
    end
 
    def show
        @user_menu = UserMenu.find(params[:id])
        render json: @user_menu, except: [:created_at, :updated_at]
    end

    def new
        user_menu = UserMenu.new
    end

    def create
        user_menu = UserMenu.create(user_menu_params)
        render json: user_menu
    end

    private

    def user_menu_params
        params.require(:user_menu).permit(:user_id, :menu_id)
    end
end
