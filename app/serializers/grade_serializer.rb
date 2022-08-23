class GradeSerializer < ActiveModel::Serializer
  attributes :id, :course_id, :note, :status, :quarter
end
