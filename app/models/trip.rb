class Trip < ApplicationRecord

  belongs_to :user
  has_many :location
  has_many :activities
# autres relations à rajouter
end
