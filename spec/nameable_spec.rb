require_relative '../classes/nameable'

describe Nameable do
  context 'Test correct_name method' do
    it 'should raise NotImplementedError' do
      nameable = Nameable.new
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
