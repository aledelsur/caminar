# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

home = Page.find_by_key("Inicio")
unless home
  Page.create(:key=>"Inicio")
  puts "Creating Page Home"
end

about = Page.find_by_key("Quienes somos")
unless about 
  Page.create(:key=>"Quienes somos")
  puts "Creating Page About"
end

professionals = Page.find_by_key("Profesionales")
unless professionals
  Page.create(:key=>"Profesionales")
  puts "Creating Page Professionals"
end

contact = Page.find_by_key("Contacto")
unless contact 
  Page.create(:key=>"Contacto")
  puts "Creating Page Contact"
end

if PageModule.all.empty?  
  PageModule.create(:title=>"About", :text=>"Im a paragraph. Click here to add your own text and edit me. Its easy. Just click Edit Text or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. Im a great place for you to tell a story and let your users know a little more about you.")
  PageModule.create(:title=>"Services", :text=>"Im a paragraph. Click here to add your own text and edit me. Its easy. Just click Edit Text or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. Im a great place for you to tell a story and let your users know a little more about you.")
  PageModule.create(:title=>"Testimonials", :text=>"Im a paragraph. Click here to add your own text and edit me. Its easy. Just click Edit Text or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. Im a great place for you to tell a story and let your users know a little more about you.")
end

option = Option.where(:key => "telefono").first
unless option
  Option.create(:key=>"telefono")
  puts "Creando telefono"
end
