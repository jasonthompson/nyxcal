require 'spec_helper'

describe DayDecorator do
  before do
    ENV['DATE_FMT'] = '%B %d, %Y'
  end

  subject {DayDecorator.new({month: '03', day: '15', year: '2014'})}

  describe "#title" do
    it 'returns human readable date as title' do
      expect(subject.title).to eq('March 15, 2014')
    end
  end
end
