class Project < ApplicationRecord
  validates :name, presence: true
  has_one :programme, dependent: :destroy
end
