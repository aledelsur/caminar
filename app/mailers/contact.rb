class Contact < ActionMailer::Base
  default from: params[:email]

  def new_contact(params=nil)
    @content = params[:content]
    mail(:to => "lucasminissale@gmail.com", :subject => "#{params[:name]} te hizo una consulta!")
  end
end
