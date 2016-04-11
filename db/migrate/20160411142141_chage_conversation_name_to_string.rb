class ChageConversationNameToString < ActiveRecord::Migration
  def change
    change_column :conversations, :conversation_name, :string
  end
end
