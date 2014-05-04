require 'spec_helper'

describe Meddle::PillBuilder do
  subject do
    Meddle::PillBuilder.new(double(:tab, name: 'Discount'))
  end

  before(:each) do
    subject.add('Price Off', proc { "Hello World" })
  end

  describe '#blocks' do
    it 'should have the the content' do
      expect(subject.blocks).to include "discount-price-off"
      expect(subject.blocks).to include "Hello World"
    end
  end

  describe '#navigation' do
    it 'should have the name' do
      expect(subject.navigation).to include('Price Off')
    end
  end
end
