require 'spec_helper'

describe HL7::Message::Segment::ZCF do
  let(:zcf_segment){
    %[ZCF|A|B|C|D|E|F|G]
  }

  let(:zcf){
    HL7::Message::Segment::ZCF.new( zcf_segment )
  }

  it 'creates a ZCF segment' do
    expect(zcf).to_not be_nil
  end

  it 'converts the segment to a string' do
    expect(zcf.to_s).to eq zcf_segment
  end

  it 'allows access to an ZCF segment' do
    expect(zcf.custom_field_1).to eq 'A'
    expect(zcf.custom_field_2).to eq 'B'
    expect(zcf.custom_field_3).to eq 'C'
    expect(zcf.custom_field_4).to eq 'D'
    expect(zcf.custom_field_5).to eq 'E'
    expect(zcf.custom_field_6).to eq 'F'
    expect(zcf.custom_field_7).to eq 'G'
  end
end
