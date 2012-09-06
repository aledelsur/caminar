ActiveAdmin.register Professional do

  actions :index, :edit, :new, :destroy, :update
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
      f.input :name
      f.input :photo, :hint => f.template.image_tag(f.object.photo.url(:thumb))
      f.input :title
      f.input :text
      f.input :position
     end
   	f.buttons
  end

end
