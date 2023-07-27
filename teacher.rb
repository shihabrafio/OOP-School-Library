require_relative 'Person'

class Teacher < Person
  attr_accessor :specialization
  def initialize(age, specialization, name)
    super(age, name)
    @specialization = 'Unknown'
  end

  def can_use_services?
    true
  end
end
