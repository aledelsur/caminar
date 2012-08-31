ActiveAdmin.register Page do

  actions :index, :edit, :update
  filter :title

  form do |f|
    f.inputs "Datos de la pagina" do
      f.input :title
      f.input :text
	  f.input :meta_title
	  f.input :meta_description
    end
    f.buttons
  end

  index do
    column :title
    column :text
    default_actions
  end
  
end

