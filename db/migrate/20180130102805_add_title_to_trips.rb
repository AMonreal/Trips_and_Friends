class AddTitleToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :title, :string
  end
end