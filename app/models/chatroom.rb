class Chatroom < ApplicationRecord
  has_many :mensajes, dependent: :destroy
  belongs_to :company
  belongs_to :assistant
end
