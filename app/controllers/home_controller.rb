class HomeController < ApplicationController

  def index
    @notes = Note.all.order(id: "DESC").includes(:user)
    @all_ranks = Note.find(Favorite.group(:note_id).order('count(note_id) desc').limit(4).pluck(:note_id))
    @tags = ActsAsTaggableOn::Tag.most_used(6)
  end
  

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
