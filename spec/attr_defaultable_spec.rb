require 'spec_helper'

describe AttrDefaultable do
  class Test
    extend AttrDefaultable
    attr_defaultable :foo, -> { 'bar' }
  end

  describe '.attr_defaultable' do
    context 'when an attibute is not set' do
      it 'uses the default' do
        expect(Test.new.foo).to eq 'bar'
      end
    end

    context 'when an attribute is set' do
      let(:test) { Test.new }
      before { test.foo = 'baz' }

      it 'uses the set value' do
        expect(test.foo).to eq 'baz'
      end
    end
  end

end
