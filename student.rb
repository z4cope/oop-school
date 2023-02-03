require './person'

class Student < Person
  def initialize(classroom, name)
    super(15, name)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
