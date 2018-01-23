class Activity < ApplicationRecord

  belongs_to :users
  belongs_to :trips
  belongs_to :location
end
