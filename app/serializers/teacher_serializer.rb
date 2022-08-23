class TeacherSerializer < ActiveModel::Serializer

  def logged_in
    true
  end

  attributes :id, :name, :email, :logged_in
end
