require_relative 'Person'

class Teacher < Person
  def initialize(age, specialization, name: 'Unknown', parent_permission: true)
    super(name: name, parent_permission: parent_permission, age: age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
