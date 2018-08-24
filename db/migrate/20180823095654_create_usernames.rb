class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      
      t.string:username
      t.string:password
      t.integer:phone
      t.string:address
      t.integer:user_level

      t.timestamps null: false
    end
  end
end
