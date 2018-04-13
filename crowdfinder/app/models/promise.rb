class Promise < ApplicationRecord
  belongs_to :project, required: true
  has_many :merches
  has_many :funders
  has_many :users, through: :funders

end