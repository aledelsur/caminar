class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.locale = 'es'

  def site_values
    option = Page.find_by_key("contact")
    @address = option.contact_address if option
    ActionMailer::Base.default_url_options[:host] = 'localhost:3000'
  end  
end
