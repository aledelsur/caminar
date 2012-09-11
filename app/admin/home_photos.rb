ActiveAdmin.register HomePhoto do
  #Eliminar filters
  config.clear_sidebar_sections!


  actions :index, :edit, :update, :destroy, :new, :create
  
  menu :label => "Fotos de Portada"
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Fotos de portada" do
      f.input :photo, :hint => f.template.image_tag(f.object.photo.url(:thumb))
      f.input :text, :as => :rich, :config => { :width => '50%', :height => '200px' }
      f.input :position
    end
    f.buttons
  end

  index do
	  column :text
	  column :photo do |photo|
	    image_tag(photo.photo, :class=>"home_photo_img")
	  end
    default_actions
  end
end
