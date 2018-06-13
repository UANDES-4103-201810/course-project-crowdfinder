class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  has_many :funders
  has_many :promises, through: :funders
  has_many :wishes
  has_many :projects, through: :wishes

  validates :username, uniqueness: true
  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password, length: {minimum: 8}, allow_blank: false, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "Password more than 8 alphanumeric characters"}


  def self.from_omniauth(auth)
    where(provider:auth.provider,uid:auth.uid).first_or_create do | user |
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.password = Devise.friendly_token[ 0, 20]
      user.is_admin = false
    end
  end
end
