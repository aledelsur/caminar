class Contact < ActionMailer::Base
  default from: "no-responder@institutocaminar.com"

  def new_contact(params=nil)
    @content = params[:content]
    @email = params[:email]
    mail(:to => "institutocaminar@hotmail.com", :subject => "#{params[:name]} te hizo una consulta!")
  end
end
