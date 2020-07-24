class MenusController < ApplicationController
    def index
        menus = Menu.all
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
        render json: menu
    end

    private

    def menu_params
        params.require(:menu).permit(:week)
    end
    
end
