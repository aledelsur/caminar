module ApplicationHelper

  def map
    if @contact_page
      image_tag "http://maps.google.com/maps/api/staticmap?center=#{@contact_page.contact_address}&zoom=14&size=256x256&maptype=roadmap&markers=color:red%7Ccolor:red%7Clabel:C%7C#{@contact_page.latitude.to_s},#{@contact_page.longitude}&sensor=false"
    end
  end

  def address
    raw(@contact_page.contact_address.gsub(",", "<br>")) if @contact_page && @contact_page.contact_address
  end

  def notice
    flash[:notice]
  end

end
