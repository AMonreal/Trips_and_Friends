class Friend < ApplicationRecord

  # has_many ??
  # je ne sais pas si mettre has_many :friends ?
  # has_many :users ?
  # est-ce que je dois lui donner des paramètres genre first_name etc ? Parce que c'est plus un statut ...
  # bref yé soui perdue
  belongs_to :users
end
