class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :text
end
