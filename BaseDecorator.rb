require "./nameable"

class BaseDecorator < Nameable
    def initialize(nameable)
        @nameable = nameable
    end
end