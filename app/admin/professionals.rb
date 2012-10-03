ActiveAdmin.register Professional do

  actions :index, :edit, :new, :create, :destroy, :update
  filter :name

  menu :label => "Profesionales"
  index do
  	column "Foto" do |photo|
  	  image_tag(photo.photo, :class=>"home_photo_img")
  	end
    column "Titulo" do |p|
      p.title
    end

    column "Texto" do |p|
      raw(p.text)
    end
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Nuevo Profesional" do
      f.input :photo, :label => "Foto"
      f.input :title, :label => "Titulo"
      f.input :text, :label => "Texto", :as => :rich, :config => { :width => '75%', :height => '200px' }
     end
   	f.buttons
  end

end
