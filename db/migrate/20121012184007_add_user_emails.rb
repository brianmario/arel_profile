class AddUserEmails < ActiveRecord::Migration
  def up
    create_table "user_emails", :force => true do |t|
      t.integer "user_id",            :precision => :signed
      t.string  "email"
      t.boolean "primary",            :precision => :signed, :scale => 1
    end
  end

  def down
    drop_table "user_emails"
  end
end
