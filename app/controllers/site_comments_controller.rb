class SiteCommentsController < ApplicationController

  def create
    @comment = SiteComment.create(params[:site_comment])
    flash[:notice] = "Gracias por dejarnos tu comentario."
    redirect_to root_path(:event=>"comments")
  end

  def destroy
    
  end

end
