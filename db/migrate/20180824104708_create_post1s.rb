class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string:file

      t.timestamps null: false
    end
  end
end
