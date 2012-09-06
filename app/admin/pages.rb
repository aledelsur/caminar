ActiveAdmin.register Page do

  actions :index, :edit, :update
  filter :title

  menu :label => "Paginas"
  form do |f|
    f.inputs "Datos de la pagina" do
      f.input :title
      f.input :text
      if f.object.key == "contact"
        f.input :contact_address
      end
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

