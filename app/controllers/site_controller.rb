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
        @contact_page = Page.find_by_key("contact")
      else
        @event = "home"
        @home_photos = HomePhoto.all
        @page_modules = PageModule.all
    end 
  end

  def send_email
    
  end
end