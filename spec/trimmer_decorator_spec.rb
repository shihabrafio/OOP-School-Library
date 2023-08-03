# spec/trimmer_decorator_spec.rb
require_relative '../classes/trimmer_decorator'

describe TrimmerDecorator do
  context 'Test correct_name method' do
    it 'should trim the name if it is longer than 10 characters' do
      nameable_mock = double('Nameable', correct_name: 'Testtesttest')
      decorator = described_class.new(nameable_mock)
      expect(decorator.correct_name).to eq('Testtestte')
    end

    it 'should not trim the name if it is not longer than 10 characters' do
      nameable_mock = double('Nameable', correct_name: 'Name')
      decorator = described_class.new(nameable_mock)
      expect(decorator.correct_name).to eq('Name')
    end
  end
end
