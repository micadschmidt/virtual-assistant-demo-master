class Comment < ApplicationRecord
  belongs_to :assistant

  validates :rating, presence: true
  validates :title, presence: true
  validates :title, length: { minimum: 5, maximum: 20 }
  validates :content, presence: true
  validates :content, length: { minimum: 20, maximum: 100 }
  validates :name, presence: true
end
