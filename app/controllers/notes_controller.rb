class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  private
  def note_params
    params.require(:note).permit(:title, :content).merge(user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
