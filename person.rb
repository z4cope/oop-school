require './nameable'
require './CapitalizeDecorator'
require './TrimmerDecorator'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    @age > 18 or @parent_permission == true
  end

  def correct_name
    p @name
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, "AboNekaAbnOmNeka")
  p person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
  p capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  p capitalizedTrimmedPerson.correct_name