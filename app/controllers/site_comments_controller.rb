class SiteCommentsController < ApplicationController

  def create
    if simple_captcha_valid?
      @comment = SiteComment.create(params[:site_comment])
      flash[:notice] = "Gracias por dejarnos tu comentario."
      redirect_to root_path(:event=>"comments")
    else
      flash[:notice] = "El codigo captcha no es válido"
      redirect_to root_path(:event=>"comments")
    end
  end

  def destroy
    
  end

end
