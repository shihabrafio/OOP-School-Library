require_relative 'base_decorator'

class Trimmer_Decorator < Base_Decorator
    def correct_name
        if @nameable.correct_name.length > 10
            @nameable.correct_name.delete(@nameable.correct_name[10..])
        else
            @nameable.correct_name
        end
    end
end