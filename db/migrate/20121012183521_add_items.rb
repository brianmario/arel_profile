class AddItems < ActiveRecord::Migration
  def up
    create_table "items", :force => true do |t|
      t.integer  "user_id",       :precision => :signed
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean  "delete_flag",   :precision => :signed, :scale => 1, :default => false, :null => false
    end
  end

  def down
    drop_table "items"
  end
end
