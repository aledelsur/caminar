class Professional < ActiveRecord::Base
  attr_accessible :name, :title, :text, :position, :photo


  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small=> "150x150#"},
    :storage => :s3,
    :bucket => "caminar",
    :s3_options => {
    :server => "s3-website-us-east-1.amazonaws.com"},
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/#{Rails.env}/professionals/:attachment/:style/:id/:filename"
end
