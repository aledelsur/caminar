class SiteController < ApplicationController
  before_filter :site_values

  def index
  	case params[:event]
      when "about"
        @event = "about"
        @page = Page.where(:key => "Quienes somos").first
      when "professionals"
        @event = "professionals"
        @page = Page.where(:key => "Profesionales").first
        @professionals = Professional.all
      when "contact"
        @event = "contact"
        @page = Page.where(:key => "Contacto").first
      when "comments"
        @event = "comments"
        @comment = SiteComment.new
        @comments = SiteComment.paginate :per_page => 6, :page => params[:page], :order=>"created_at DESC"
      else
        @event = "home"
        @home_photos = HomePhoto.all
        @page_modules = PageModule.all.reverse
    end 
  end

  def new
    Contact.new_contact(params).deliver
    flash[:notice] = "Gracias! Tu consulta fue enviada."
    @event = "contact"
    render "index"
  end
end