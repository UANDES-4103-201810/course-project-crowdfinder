class User < ApplicationRecord
  has_many :funders
  has_many :promises, through: :funders
end