class SiteComment < ActiveRecord::Base
  attr_accessible :name, :email, :text
end
