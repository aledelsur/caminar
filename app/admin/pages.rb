ActiveAdmin.register Page do

  actions :index, :edit, :update
  filter :title

  menu :label => "Paginas"


  form do |f|
    f.inputs "Datos de la pagina - #{f.object.key}" do
      if f.object.key == "Inicio" 
        f.input :meta_title, :label => "Meta titulo (Google)"
        f.input :meta_description, :label => "Meta Descripcion (Google)"
      elsif f.object.key == "Contacto"
        f.input :contact_address, :label => "Direccion de contacto"
        f.input :text, :label => "Texto de la pagina"
      else
        f.input :text, :label => "Texto de la pagina" 
      end

    end
    f.buttons
  end

  index do
    column "Pagina" do |page|
      page.key
    end
    default_actions
  end
  
end

