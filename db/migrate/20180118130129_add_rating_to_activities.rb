class AddRatingToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :rating, :integer
  end
end
