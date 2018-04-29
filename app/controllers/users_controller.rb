class UsersController < ApplicationController
  # before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]



  def index
  	@users = User.all
  	@book = Book.new
  end


  def show
  	@user = User.find(params[:id])
  	@book = Book.new
    @books = Book.all
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
  		# user.update(user_params)
    # if @user.update_attributes(user_params)
    if user.update(user_params)
      flash[:success] = "ユーザー登録情報更新"
      redirect_to user_path(user.id)
    else
      render 'edit'
    end
  end


  private
  def user_params
  	params.require(:user).permit(:profile_image, :name,:introduction)

  end

  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to root_path
    end
  end
end










