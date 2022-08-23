class AlumnSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :courses, serializer: CourseSerializer
  has_many :grades, serializer: GradeSerializer
end
