require './person'

class Teacher < Person
  def initialize(_age, specialization, name = 'Unknown', _parent_permission: true)
    super(40, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
