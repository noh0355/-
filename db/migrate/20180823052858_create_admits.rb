class CreateAdmits < ActiveRecord::Migration
  def change
    create_table :admits do |t|
      
      t.string:name
      t.string:title
      t.string:content
      t.string:image
      t.string:file
      
      t.timestamps null: false
    end
  end
end
