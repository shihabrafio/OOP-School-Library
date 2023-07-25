require_relative 'nameable'

class Base_Decorator < Nameable
    attr_accessor:nameable

    def initialize(nameable)
        @nameable = nameable
        super()
    end
    
    def correct_name
        @nameable.correct_name
    end
end