class Activity < ApplicationRecord

  belongs_to :users, :trips, :location
end
