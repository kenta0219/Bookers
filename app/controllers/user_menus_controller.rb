class UserMenusController < ApplicationController

	def index
		@user_menu = UserMenu.all
	end

	def show
		@user_menu = UserMenu.find(params[:id])
	end

	def user_menu

	end
end
