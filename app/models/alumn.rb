class Alumn < ApplicationRecord
  validates :name, presence: true
  
  has_many :grades
  has_many :courses, through: :grades
end
