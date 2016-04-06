class ConversationsUsers < ActiveRecord::Migration
  def change
    create_table :conversations_users do |t|
      t.integer :conversation_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
