class AddLocationIdToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :location_id, :string
  end
end
