require './person'

class Teacher < Person
  def initialize(_age, specialization, name = 'Unknown', _parent_permission: true, role: 'Teacher')
    super(age, name, parent_permission: parent_permission, role: role)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
