# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

home = Page.find_by_key("home")
unless home
  Page.create(:key=>"home")
  puts "Creating Page Home"
end

about = Page.find_by_key("about")
unless about 
  Page.create(:key=>"about")
  puts "Creating Page About"
end

professionals = Page.find_by_key("professionals")
unless professionals
  Page.create(:key=>"professionals")
  puts "Creating Page Professionals"
end

contact = Page.find_by_key("contact")
unless contact 
  Page.create(:key=>"contact")
  puts "Creating Page Contact"
end