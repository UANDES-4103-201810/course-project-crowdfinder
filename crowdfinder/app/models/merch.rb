class Merch < ApplicationRecord
  belongs_to :promise

  validates :description, length: {minimum: 12}, allow_blank: false
end
