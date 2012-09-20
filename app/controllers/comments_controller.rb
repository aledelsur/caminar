class CommentsController < ApplicationController

  def index
    
  end

  def create
    @comment = Comment.create(params[:comment])
    flash[:notice] = "Gracias por dejarnos tu comentario."
    redirect_to root_path(:event=>"comments")
  end

  def destroy
    
  end

end
