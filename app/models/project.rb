class Project < ApplicationRecord
  validates :name, presence: true
  has_many :programmes, dependent: :destroy
end
