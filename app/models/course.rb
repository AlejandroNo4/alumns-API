class Course < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :grades
  has_many :alumns, through: :grades
end
