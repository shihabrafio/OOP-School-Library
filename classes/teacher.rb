require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, _specialization, name)
    super(age, name)
    @specialization = _specialization
  end

  def can_use_services?
    true
  end
end
