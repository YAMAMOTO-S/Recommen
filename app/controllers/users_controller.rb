class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @notes = @user.notes
    @nickname = @user.nickname
    @favorite_notes = @user.favorite_notes
  end

  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end
  
  private

  def user_params
    params.require(:user).permit(:nickname, :email, :image, :description)
  end
end
