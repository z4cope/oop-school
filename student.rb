require './person'

class Student < Person
  attr_reader :classroom
  def initialize(_age, classroom, name = 'Unknown', _parent_permission: true,classroom: 'Unkown', role: 'Student')
    super(age, name, parent_permission: parent_permission, role: role)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
