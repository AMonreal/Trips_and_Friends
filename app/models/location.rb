class Location < ApplicationRecord

  belongs_to :users, :trips, :activities

end
