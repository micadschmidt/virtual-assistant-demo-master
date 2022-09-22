class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  TYPES = %w[Assistant Company]
  has_many :reviews
  has_one :company
  has_one :user

  has_one :company, dependent: :destroy
  has_one :assistant, dependent: :destroy

  validates :type_of_user, inclusion: { in: TYPES }
  validates :email, presence: true
  validates :email, uniqueness: { scope: :email, message: "email already has an account" }
end
