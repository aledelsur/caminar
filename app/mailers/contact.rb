class Contact < ActionMailer::Base
  default from: "from@example.com"

  def new_contact(params=nil)
    @content = params[:content]
    mail(:to => params[:email], :subject => "#{params[:name]} te hizo una consulta!")
  end
end
