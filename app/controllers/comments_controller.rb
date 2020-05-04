class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/notes/#{comment.note.id}"
  end
  

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, note_id: params[:note_id])
  end
end
