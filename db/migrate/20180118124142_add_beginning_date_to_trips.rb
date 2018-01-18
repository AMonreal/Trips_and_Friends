class AddBeginningDateToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :beginning_date, :string
  end
end
