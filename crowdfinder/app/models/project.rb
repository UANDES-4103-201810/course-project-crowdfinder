class Project < ApplicationRecord
  has_one :user
  has_many :promises
  belongs_to :category
end