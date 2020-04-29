class HomeController < ApplicationController

  def index
    @notes = Note.all
  end
  

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
