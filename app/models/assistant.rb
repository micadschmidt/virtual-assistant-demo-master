class Assistant < ApplicationRecord
  # SKILLS = ["","Organization Skills", "Problem Solving Skills", "Flexibility", "Communication Skills", "Creativity", "Responsibility", "Computer proficiency", "Customer service", "Research Skills", "Computer Software and Application Knowledge", "Marketing", "Content creation", "Administrative", "Writing and editing Skills", "Languages", "Design"]
  AVAILABILITY = ["Any", "Part-time", "Full-time"]

  belongs_to :user
  has_many :applications, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :mensajes, through: :chatrooms
  #validates :skills, inclusion: { in: SKILLS }
  validates :skills, presence: true
  validates :availability, inclusion: { in: AVAILABILITY }
  has_one_attached :photo
  validates :photo, presence: true

  # validates :cv, presence: true
  has_one_attached :cv
  # validate :correct_cv_mime_type

  private
  def correct_cv_mime_type
    if cv.attached? && !cv.content_type.in?(%w[application/msword application/pdf])
      errors.add(:cv, 'Must be a PDF or a DOC file')
    end
  end
end
