require_relative './rental'

class Person
  def initialize(age, name = 'Unknown', parent_permission: true, _rentals: 0)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals

  def can_use_services?
    @age > 18 or @parent_permission == true
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
