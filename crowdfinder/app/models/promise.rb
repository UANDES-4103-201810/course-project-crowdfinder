class Promise < ApplicationRecord
  belongs_to :project
  has_many :users, through: :funders
  has_many :merches
end
