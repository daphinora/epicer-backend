class MenusController < ApplicationController
    skip_before_action :require_login
    def index
        if params[:user]
            # byebug
            menus = Menu.all.filter {|menu| menu.user_ids.include?(params[:user].to_i)}
        else
            menus = Menu.all
        end
        render json: menus, except: [:created_at, :updated_at]
    end
 
    def show
        @menu = Menu.find(params[:id])
        render json: @menu, except: [:created_at, :updated_at]
    end

    def new
        menu = Menu.new
    end

    def create
        menu = Menu.create(menu_params)
        user_menu = UserMenu.create(menu_id: menu.id, user_id: params["user_id"])
        render json: menu
    end

    private

    def menu_params
        params.require(:menu).permit(:week)
    end
    
end
