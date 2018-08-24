class CreateMeans < ActiveRecord::Migration
  def change
    create_table :means do |t| 
      
      t.string:username
      t.string:password
    
      t.timestamps null: false
    end
  end
end
