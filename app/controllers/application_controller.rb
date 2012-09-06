class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.locale = 'es'

  def site_values
    @address = Page.find_by_key("contact").contact_address
  end  
end
