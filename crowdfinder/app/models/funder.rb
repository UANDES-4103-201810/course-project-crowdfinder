class Funder < ApplicationRecord
  belongs_to :user
  belongs_to :promise

end