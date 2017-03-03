require "date_library"
require 'pry'
describe DateLibrary do

subject() { described_class.new(date)}
context 'with a valid date' do

  let(:date) { "02-01-1900" }



  describe '#year' do
    it 'returns the year' do
      # binding.
      expect(subject.year()).to eq(1900)
    end

  end

  describe '#month' do
    it 'returns the correct month' do
      expect(subject.month).to eq(1)
    end
  end

  describe '#day' do
    it 'returns the correct day' do
      expect(subject.day).to eq(2)
    end
  end

  describe '#leap_year?' do
    context 'when the year is a leap year' do
      # let(:date) { "01-02-2000" }

        it 'returns true' do
          expect(DateLibrary.leap_year?(2000)).to be true
        end
    end

    context 'when the year is not leap year' do

        it 'returns false' do
          expect(DateLibrary.leap_year?(2001)).to be false
        end
    end
  end

  describe '#timestamp' do
    let(:date) { "01-02-1900" }
    it 'returns a timestamp for the date value' do
      expect(subject.timestamp).to eq(2678400)
    end
  end
end

end



