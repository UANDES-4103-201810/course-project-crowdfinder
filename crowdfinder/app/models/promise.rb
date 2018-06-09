class Promise < ApplicationRecord
  belongs_to :project
  has_many :users
  has_many :merches
end
