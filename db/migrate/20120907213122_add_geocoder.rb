class AddGeocoder < ActiveRecord::Migration
  def up
    add_column :pages, :latitude, :float
    add_column :pages, :longitude, :float
  end

  def down
    remove_column :pages, :latitude
    remove_column :pages, :longitude
  end
end
