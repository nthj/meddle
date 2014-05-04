require 'spec_helper'

describe Meddle::Pill do
  subject do
    Meddle::Pill.new(
      double(:tab, name: 'discount'),
      'Price Off',
      proc { },
      0
    )
  end

  describe '#active' do
    it 'should be active for the first element' do
      expect(subject.active).to eql 'active'
    end

    it 'should not be active for the others' do
      subject.i = 3
      expect(subject.active).to_not eql 'active'
    end
  end

  describe '#anchor' do
    it 'should have a hash' do
      expect(subject.anchor[0]).to eql '#'
    end
  end

  describe '#attributes' do
    it 'should have the dom_id' do
      expect(subject.attributes[:id]).to eql subject.dom_id
    end
  end

  describe '#dom_id' do
    it 'should have the tab name and the pill name' do
      expect(subject.dom_id).to eql 'discount-price-off'
    end
  end
end
