class AddStarredItems < ActiveRecord::Migration
  def up
    create_table "starred_items", :id => false, :force => true do |t|
      t.integer  "user_id",    :precision => :signed
      t.integer  "item_id",    :precision => :signed
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table "starred_items"
  end
end
