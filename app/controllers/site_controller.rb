class SiteController < ApplicationController
  before_filter :site_values

  def index
  	case params[:event]
      when "home"
        @event = "home"
        @home_photos = HomePhoto.all
        @page_modules = PageModule.all
      when "about"
        @event = "about"
      when "professionals"
        @event = "professionals"
        @professionals = Professional.all
      when "contact"
        @event = "contact"
        @contact = "text"
    end 
  end
end