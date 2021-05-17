require 'BandPassFilter'

describe BandPassFilter do
  let(:test_filter) { BandPassFilter.new }

  describe '#filter' do
    context 'does not change the sound wave input' do
      it 'returns the same sound wave when it meets the min and max frequency requirements' do
        input = [10]
        expect(test_filter.filter(input, 10, 30)).to eq [10]
      end

      it 'returns the same sound wave array when it meets the min and max frequency requirements' do
        input = [10, 20, 30]
        expect(test_filter.filter(input, 10, 30)).to eq [10, 20, 30]
      end
    end

    context 'changes sound wave when doesnt meet min freq requirement' do
      it 'returns a changed sound wave when it does not meet the min frequency requirements' do
        input = [10]
        expect(test_filter.filter(input, 20, 30)).to eq [20]
      end

      it 'returns a changed sound wave array when it does not meet the min frequency requirements' do
        input = [10, 20, 30]
        expect(test_filter.filter(input, 15, 30)).to eq [15, 20, 30]
      end

    end

    context 'changes sound wave when doesnt meet max freq requirement' do
      it 'returns a changed sound wave when it does not meet the max frequency requirements' do
        input = [30]
        expect(test_filter.filter(input, 10, 20)).to eq [20]
      end
    end

  end
end
