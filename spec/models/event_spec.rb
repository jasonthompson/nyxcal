require 'spec_helper'
require 'factory_girl'

describe Event do
  subject(:christmas){ Event.new }

  it "works" do
    expect(christmas).to be_an(Event)
  end

  describe '.on_day' do
    before do
      FactoryGirl.create(:event)
      FactoryGirl.create(:zoltar_event)
    end

    subject{Event.on_day(2014,03,15)}
    let(:date) {Date.new(2014,03,15)}

    it 'returns events for given day' do
      expect(subject.count).to eq(2)
      expect(subject[0].summary).to eq('Meet Keop')
    end
    
    it 'takes a string for year, month, day' do
      expect(Event.on_day('2014','03','15').count).to eq(2)
    end
  end
end
