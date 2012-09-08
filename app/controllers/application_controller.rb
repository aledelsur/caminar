class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.locale = 'es'

  def site_values 
    ActionMailer::Base.default_url_options[:host] = 'localhost:3000'
    @contact_page = Page.find_by_key("contact")
  end
end
