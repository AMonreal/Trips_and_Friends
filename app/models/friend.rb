class Friend < ApplicationRecord

  # has_many ??
  # je ne sais pas si mettre has_many :friends ?
  # has_many :users ?
  belongs_to :users
end
