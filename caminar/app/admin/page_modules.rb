ActiveAdmin.register PageModule do

  actions :index, :edit, :destroy, :update

  #Eliminar filters
  config.clear_sidebar_sections!

  index do
    column :title
    column :text
    default_actions
  end

  form do |f|
    f.inputs "Datos del nuevo modulo" do
      f.input :title
      f.input :text
      f.input :position
    end
    f.buttons
  end  
  
end
