class AddUserIdToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :user_id, :string
  end
end
