require_relative 'Person'

class Teacher < Person
    def initialize(name="Unknown", age, parent_permission= true, specialization)
        super(name: name, parent_permission: parent_permission, age: age)
        @specialization = specialization
    end
    
    def can_use_services?
        true
    end
end