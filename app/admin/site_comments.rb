ActiveAdmin.register SiteComment do
  actions :index, :edit, :destroy, :update

  #Eliminar filters
  config.clear_sidebar_sections!

  menu :label => "Comentarios"
  index do
    column "Nombre" do |o|
      o.name
    end
    column "Email" do |o|
      o.email
    end
    column "Texto" do |o|
      o.text
    end
    column "Subido" do |o|
      o.created_at
    end
    default_actions
  end

  form do |f|
    f.inputs "Datos del nuevo modulo" do
      f.input :name, :label => "Nombre"
      f.input :email, :label => "Email"
      f.input :text, :label => "Texto"
    end
    f.buttons
  end  
end
