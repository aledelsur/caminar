class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.locale = 'es'

  def site_values 
    ActionMailer::Base.default_url_options[:host] = 'localhost:3000'
  end  
end
