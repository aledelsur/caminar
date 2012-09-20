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
      f.input :name, :label => "Nombre y profesion (Ej: Dr. Biga, Oscar - Cardiologo)"
      f.input :photo, :hint => f.template.image_tag(f.object.photo.url(:thumb)), :label => "Foto"
      f.input :title, :label => "Titulo"
      f.input :text, :label => "Texto", :as => :rich, :config => { :width => '75%', :height => '200px' }
     end
   	f.buttons
  end

end
