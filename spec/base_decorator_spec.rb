# spec/base_decorator_spec.rb
require_relative '../classes/base_decorator'

describe BaseDecorator do
  let(:nameable_mock) { double('Nameable') }
  subject(:decorator) { described_class.new(nameable_mock) }

  context 'Test correct_name method' do
    it 'should call correct_name on the nameable object' do
      expect(nameable_mock).to receive(:correct_name)
      decorator.correct_name
    end
  end
end
