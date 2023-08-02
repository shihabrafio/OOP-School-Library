require_relative '../classes/rental'

describe Rental do
  before :each do
    @rental = Rental.new('2023', 'Book1', 'Person1')
  end

  describe 'Test retrieving data from Rental class' do
    it 'returns the correct Date' do
      expect(@rental.date).to eql '2023'
    end
    it 'returns the correct Book' do
      expect(@rental.book).to eql 'Book1'
    end
    it 'returns the correct person' do
      expect(@rental.person).to eql 'Person1'
    end

  end
end
