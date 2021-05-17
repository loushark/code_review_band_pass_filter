require 'BandPassFilter'

describe BandPassFilter do
  let(:test_filter) { BandPassFilter.new }

  describe '#filter' do
    it 'returns the same sound wave when it meets the min and max frequency requirements' do
      input = [10]
      expect(test_filter.filter(input, 10, 30)).to eq [10]
    end

    it 'returns a changed sound wave when it does not meet the min frequency requirements' do
      input = [10]
      expect(test_filter.filter(input, 20, 30)).to eq [20]
    end

    it 'returns a changed sound wave when it does not meet the max frequency requirements' do
      input = [30]
      expect(test_filter.filter(input, 10, 20)).to eq [20]
    end
    
  end
end
