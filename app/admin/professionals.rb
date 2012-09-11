ActiveAdmin.register Professional do

  actions :index, :edit, :new, :create, :destroy, :update
  filter :name

  menu :label => "Profesionales"
  index do
    column :name
	column :photo do |photo|
	  image_tag(photo.photo, :class=>"home_photo_img")
	end
    column :title
    column :text
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Nuevo Profesional" do
      f.input :name, :label => "Nombre (no sera mostrado en el sitio web)"
      f.input :photo, :hint => f.template.image_tag(f.object.photo.url(:thumb)), :label => "Foto"
      f.input :title, :label => "Titulo (sera mostrado en el sitio web)"
      f.input :text, :label => "Texto (sera mostrado en el sitio web)", :as => :rich, :config => { :width => '75%', :height => '200px' }
      f.input :position, :label => "Posicion (no sera mostrado en el sitio web)"
     end
   	f.buttons
  end

end
