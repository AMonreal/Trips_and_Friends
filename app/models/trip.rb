class Trip < ApplicationRecord

  belongs_to :users, optional: true
  has_many :activities
  #through: :users  ?


# validates :beginning_date, presence: true
# validates :end_date, presence: true
# validates :location_id, presence: true
# validates :user_id, presence: true
# validates :activities, presence: true
end
