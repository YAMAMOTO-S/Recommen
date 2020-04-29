class FavoritesController < ApplicationController
  before_action :set_variables
  
  def create
    favorite = current_user.favorites.build(note_id: params[:note_id])
    favorite.save
  end

  def destroy
    favorite = Favorite.find_by(note_id: params[:note_id], user_id: current_user.id)
    favorite.destroy
  end

  private

  def set_variables
    @note = Note.find(params[:note_id])
    @id_name = "#like-link-#{@note.id}"
  end
end
