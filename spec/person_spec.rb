require_relative '../classes/person'

describe Person do
  before :each do
    @person = Person.new(20, 'John Doe')
  end

  describe 'Test creating new person' do
    it 'test retrieving person name' do
      expect(@person.name).to eq('John Doe')
    end

    it 'test retrieving person age' do
      expect(@person.age).to eq(20)
    end
  end

  describe 'Test person methods' do
    it 'tests can_use_services? method' do
      expect(@person.can_use_services?).to eq(true)
    end

    it 'tests correct_name method' do
      expect(@person.correct_name).to eq('John Doe')
    end
  end
end
