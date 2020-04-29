class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @notes = @user.notes
  end

  def edit
  end
  def update
    if current_user.update(user_params)
      render :edit
    else
      render :edit
    end
  end
  private

  def user_params
    params.require(:user).permit(:nickname, :email, :image, :description)
  end
end
