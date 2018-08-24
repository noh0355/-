class CreateAdmits < ActiveRecord::Migration
  def change
    create_table :admits do |t|
      
      t.string:name
      t.string:title
      t.string:divide

      t.timestamps null: false
    end
  end
end
