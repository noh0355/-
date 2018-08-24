class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      
      t.string:write
      t.string:quest
      t.string:respond
      
      t.timestamps null: false
    end
  end
end
