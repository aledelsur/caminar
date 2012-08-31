class Page < ActiveRecord::Base
  attr_accessible :title, :text, :meta_title, :meta_description, :key
end
