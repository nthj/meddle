require 'spec_helper'

describe Meddle::Modal do
  subject do
    Meddle::Modal.new(
      :promotion,
      double(:template, capture: 'hello world')
    )
  end

  it 'should add tabs without outputting to the screen' do
    expect(
      subject.tab('Discount') { 'Everyone loves discounts' }
    ).to be_nil
  end
end
