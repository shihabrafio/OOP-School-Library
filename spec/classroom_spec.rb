require_relative '../classes/classroom'
require_relative '../classes/student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Phesique')
  end

  context 'Test creating new Classroom' do
    it 'test retrieving label from Classroom class' do
      expect(@classroom.label).to eq('Phesique')
    end
  end

  context 'Test Classroom methods' do
    it 'Should return an array of added students' do
      student1 = Student.new(23, 'student1', false)
      @classroom.add_student(student1)
      expect(@classroom.students).to eq([student1])
    end
  end
end
