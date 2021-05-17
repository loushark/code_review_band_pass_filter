require 'BandPassFilter'

describe BandPassFilter do
  let(:test_filter) { BandPassFilter.new }

  describe '#filter' do
    it 'returns the same sound wave when it meets the min and max frequency requirements' do
      input = [10]
      expect(test_filter.filter(input, 10, 30)).to eq [10]
    end
  end
end
