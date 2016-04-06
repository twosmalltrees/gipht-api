class CreateGiphts < ActiveRecord::Migration
  def change
    create_table :giphts do |t|
      t.timestamps null: false
    end
  end
end
