class Grade < ApplicationRecord
  before_save :set_status
  belongs_to :alumn
  belongs_to :course

  validates :alumn_id, uniqueness: { scope: [:course_id, :quarter], message: 'Combination of values has been set' }

  def set_status
    self.status = note > 5 ? 'approved' : 'rejected'
  end
  
end
