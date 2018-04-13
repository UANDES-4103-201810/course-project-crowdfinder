class User < ApplicationRecord
  has_many :funders
  has_many :promises, through: :funders
  has_many :wishes
  has_many :projects, through: :wishes

  validates :name, length: {minimum: 3}, allow_blank: false
  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password, length: {minimum: 8}, allow_blank: false, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "Password more than 8 alphanumeric characters"}
end
