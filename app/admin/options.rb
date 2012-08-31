ActiveAdmin.register Option do

  actions :index, :edit, :destroy, :update

  #Eliminar filters
  config.clear_sidebar_sections!

  index do
    column :key
    column :value
    default_actions
  end

  form do |f|
    f.inputs "Datos de la opcion" do
      f.input :value
    end
    f.buttons
  end
  
end
