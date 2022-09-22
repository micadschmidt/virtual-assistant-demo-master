class Company < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  has_many :applications, through: :offers
  has_many :chatrooms, dependent: :destroy
  has_many :mensajes, through: :chatrooms

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_one_attached :photo
end
