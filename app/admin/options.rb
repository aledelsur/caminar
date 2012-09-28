ActiveAdmin.register Option do

  actions :index, :edit, :destroy, :update

  #Eliminar filters
  config.clear_sidebar_sections!

  menu :label => "Opciones"
  index do
    column "Seccion" do |o|
      o.key
    end
    
    column "Valor" do |o|
      raw(o.value)
    end
    
    default_actions
  end

  form do |f|
    f.inputs "Datos de la opcion" do
      unless f.object.key == "footer"
        f.input :value
      else
        f.input :value, :as => :rich, :config => { :width => '75%', :height => '200px' }
      end
    end
    f.buttons
  end
  
end
