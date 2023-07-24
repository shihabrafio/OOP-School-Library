require_relative 'Person'

class Student < Person
    def initialize(name="Unknown", age, parent_permission= true, classroom)
        super(name: name, parent_permission: parent_permission, age: age)
        @classroom = classroom
    end

    def play_hooky
    "¯\(ツ)/¯"
    end
end