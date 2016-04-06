class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :conversation_name
      t.timestamps null: false
    end
  end
end
