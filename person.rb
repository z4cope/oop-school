# require_relative './nameable'
require_relative './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals, :role

  def initialize(age, name = 'Unkown', parent_permission: true, role: 'Unkown')
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    @role = role
  end

  def can_use_services?
    @age > 18 or @parent_permission == true
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
