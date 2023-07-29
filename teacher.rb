require_relative 'Person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, _specialization, name, parent_permission = true)
    super(age, name, parent_permission)
    @specialization = 'Unknown'
  end

  def can_use_services?
    true
  end
end
