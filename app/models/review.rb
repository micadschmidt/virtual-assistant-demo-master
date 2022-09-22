class Review < ApplicationRecord
  belongs_to :assistant
  validates :content, presence: true
end
