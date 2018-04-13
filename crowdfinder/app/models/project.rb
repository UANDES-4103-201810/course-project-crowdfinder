class Project < ApplicationRecord
  has_many :wishes
  has_many :users, through: :wishes
  has_many :promises
  has_one :user
  belongs_to :category

  validates :name, length: {minimum: 3}, allow_blank: false
  validate :date_future

  def date_future
    if :finale_date > Date.today
      errors.add(:finale_date, "Project must end in the future")
    end
  end
end
