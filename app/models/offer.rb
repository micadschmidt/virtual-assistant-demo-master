class Offer < ApplicationRecord
  belongs_to :company
  has_many :applications, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :tag, presence: true
end
