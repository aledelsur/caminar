class SiteController < ApplicationController
  before_filter :site_values

  def index
  	case params[:event]
      when "about"
        @event = "about"
      when "professionals"
        @event = "professionals"
        @professionals = Professional.all
      when "contact"
        @event = "contact"
      else
        @event = "home"
        @home_photos = HomePhoto.all
        @page_modules = PageModule.all
    end 
  end

  def new
    Contact.new_contact(params).deliver
    flash[:notice] = "Gracias! Tu consulta fue enviada."
    @event = "contact"
    render "index"
  end
end