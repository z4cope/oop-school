require './person'

class Student < Person
  def initialize(_age, classroom, name = 'Unknown', _parent_permission: true)
    super(15, name)
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
