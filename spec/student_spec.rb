require_relative '../classes/student'

describe Person do
  before :each do
    @student = Student.new(20, 'John Doe', true)
  end

  describe 'Test creating new person' do
    it 'test retriving student name' do
      expect(@student.name).to eq('John Doe')
    end
    it 'test retriving student permissions' do
      expect(@student.parent_permission).to eq(true)
    end
    it 'test retriving student age' do
      expect(@student.age).to eq(20)
    end
  end
  describe 'Test student methods' do
    it 'tests play_hooky method' do
      expect(@student.play_hooky).to eq('¯(ツ)/¯')
    end
  end
end
