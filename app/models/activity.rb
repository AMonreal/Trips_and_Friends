class Activity < ApplicationRecord

  belongs_to :users
  belongs_to :trips, through: :users
  belongs_to :location, through: :users
end
