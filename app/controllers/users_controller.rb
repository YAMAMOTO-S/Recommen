class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @notes = current_user.notes
  end
end
