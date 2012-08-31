class CreatePageModules < ActiveRecord::Migration
  def change
    create_table :page_modules do |t|
      t.text :text
      t.string :title
      t.integer :position

      t.timestamps
    end
  end
end
