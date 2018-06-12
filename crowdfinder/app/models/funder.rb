class Funder < ApplicationRecord
  belongs_to :user
  belongs_to :promise

  validates :user_id, allow_nil: false, allow_blank: false
  validates :promise_id, allow_blank: false, allow_nil: false
  validates :value, allow_nil: false, allow_blank: false
end