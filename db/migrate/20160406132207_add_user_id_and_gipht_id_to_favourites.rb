class AddUserIdAndGiphtIdToFavourites < ActiveRecord::Migration
  def change
    add_column :favourites, :user_id, :integer
    add_column :favourites, :gipht_id, :integer
  end
end
