class Page < ActiveRecord::Base
  attr_accessible :title, :text, :contact_address, :meta_title, :meta_description, :key
  geocoded_by :contact_address
  before_validation :geocode
end
