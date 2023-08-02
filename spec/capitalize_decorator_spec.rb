# spec/capitalize_decorator_spec.rb
require_relative '../classes/capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable_mock) { double('Nameable', correct_name: 'john') }
  subject(:decorator) { described_class.new(nameable_mock) }

  context 'Test correct_name method' do
    it 'should call correct_name on the nameable object and return the capitalized name' do
      expect(nameable_mock).to receive(:correct_name).and_return('john')
      expect(decorator.correct_name).to eq('John')
    end
  end
end
