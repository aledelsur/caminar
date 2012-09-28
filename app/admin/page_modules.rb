ActiveAdmin.register PageModule do

  actions :index, :edit, :destroy, :update

  #Eliminar filters
  config.clear_sidebar_sections!

  menu :label => "Modulos"
  index do
    column "Titulo" do |o|
      o.title
    end
    column "Texto" do |o|
      raw(o.text)
    end
    default_actions
  end

  form do |f|
    f.inputs "Datos del nuevo modulo" do
      f.input :title, :label => "Titulo"
      f.input :text, :label => "Texto", :as => :rich, :config => { :width => '75%', :height => '200px' }
    end
    f.buttons
  end  
  
end
