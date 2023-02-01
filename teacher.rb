require "./person"

class Teacher < Person
    def initialize(specialization, name)
        super(40, name)
        @specialization = specialization
    end

    def can_use_services?
        true
    end
end