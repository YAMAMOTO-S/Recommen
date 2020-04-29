class NotesController < ApplicationController
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]

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

  def edit
    @note = Note.find(params[:id])
  end
  def update
    note = Note.find(params[:id])
    note.update(note_params)
    redirect_to note_path(note.id)
  end
  

  private
  def note_params
    params.require(:note).permit(:title, :content, :image_url).merge(user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to controller: :home, action: :index unless user_signed_in?
  end
end
