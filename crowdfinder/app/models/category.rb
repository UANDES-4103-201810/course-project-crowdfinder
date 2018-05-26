class Category < ApplicationRecord
  has_many :projects

  validates :name, length: {minimum: 3}, allow_blank: false
end