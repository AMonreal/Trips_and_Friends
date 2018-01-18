class Trip < ApplicationRecord

  belongs_to :user
  has_many :location, :activities
# autres relations à rajouter
end
