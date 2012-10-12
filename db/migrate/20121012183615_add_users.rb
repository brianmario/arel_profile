class AddUsers < ActiveRecord::Migration
  def up
    create_table "users", :force => true do |t|
      t.string   "login"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table "users"
  end
end
