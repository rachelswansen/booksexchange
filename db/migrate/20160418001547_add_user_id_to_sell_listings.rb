class AddUserIdToSellListings < ActiveRecord::Migration
  def change
    add_column :sell_listings, :user_id, :integer
  end
end
