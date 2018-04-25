class UsersController < ApplicationController
  def index
  	@users = User.all
  	@book = Book.new
  end


  def show
  	@user = User.find(params[:id])
  	@book = Book.new

  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
     user_id = current_user.id
    if @user.save
    	flash[:notice] = "あああ"
      redirect_to @user
    else
      render :new
    end
  end



  def update
		user = User.find(params[:id])
  		user.update(user_params)
  		redirect_to user_path(user.id)
  end

  private
  def user_params
  	params.require(:user).permit(:profile_image, :name,:introduction)

  end
end
