class Application < ApplicationRecord
  STATUS = %w[Applied Interview Pending Accepted Rejected]
  belongs_to :offer
  belongs_to :assistant

  has_one :company, through: :offer
  validates :status, inclusion: { in: STATUS }
end
