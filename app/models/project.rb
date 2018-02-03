class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :programmes, dependent: :destroy
end
