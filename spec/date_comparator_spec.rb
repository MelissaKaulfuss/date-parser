require "date_comparator"
require "date_library"

describe DateComparator do

  describe '#date_difference' do
    let(:date_one) { DateLibrary.new("27-01-2015") }
    let(:date_two) { DateLibrary.new("31-01-2015") }

  subject { described_class.date_difference( date_one, date_two ) }
    context 'with two valid dates' do
      it 'calculates the correct difference' do
        expect(subject).to eq( "4 days" )
      end
    end
  end

end