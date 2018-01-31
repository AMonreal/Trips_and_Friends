class AddPicturesToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :pictures, :string
  end
end
