class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.locale = 'es'

  def site_values 
    ActionMailer::Base.default_url_options[:host] = 'localhost:3000'
    @contact_page = Page.find_by_key("Contacto")
    telefono = Option.where(:key => "telefono").first
    @telefono = telefono.value if telefono
    footer = Option.where(:key => "footer").first
    @footer = footer.value if footer
    @meta_title = Page.find_by_key("Inicio").meta_title
    @meta_description = Page.find_by_key("Inicio").meta_description
  end
end
