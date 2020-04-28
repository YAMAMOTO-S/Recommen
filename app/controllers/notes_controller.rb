class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
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

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to root_path
  end
  

  private
  def note_params
    params.require(:note).permit(:title, :content, :image_url).merge(user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
