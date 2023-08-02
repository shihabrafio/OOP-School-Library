require_relative '../classes/teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new(26, 'Maths', 'Youssef')
  end

  context 'Test creating new teacher' do
    it 'test retriving teacher age' do
      expect(@teacher.age).to eq(26)
    end
    it 'test retriving Teacher specialization' do
      expect(@teacher.specialization).to eq('Maths')
    end
    it 'test retriving teacher name' do
      expect(@teacher.name).to eq('Youssef')
    end
  end

  context 'Test Teacher class methods' do
    it 'return always true' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
