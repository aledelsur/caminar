class Option < ActiveRecord::Base
  attr_accessible :key, :value
  #Options se deberán crear desde el seeds.rb
end
