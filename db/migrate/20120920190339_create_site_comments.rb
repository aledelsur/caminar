class CreateSiteComments < ActiveRecord::Migration
  def change
    create_table :site_comments do |t|
      t.string :name
      t.string :email
      t.text :text
      
      t.timestamps
    end
  end
end
