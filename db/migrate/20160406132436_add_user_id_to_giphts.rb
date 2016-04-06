class AddUserIdToGiphts < ActiveRecord::Migration
  def change
    add_column :giphts, :user_id, :integer
  end
end
