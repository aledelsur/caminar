class HomePhoto < ActiveRecord::Base
  
  attr_accessible :text, :position, :photo
  
  has_attached_file :photo,
    :styles => {
      :home => "959x430#",
      :small=> "150x150>"},
    :storage => :s3,
    :bucket => "caminar",
    :s3_options     => {
      :server => "s3-website-us-east-1.amazonaws.com"},
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/#{Rails.env}/home_photos/:attachment/:style/:id/:filename"

end
