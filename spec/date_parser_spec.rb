require "date_parser"
require "date_library"

describe DateParser do
  describe '#parse' do
    context 'with a valid date format' do
      let(:date) {"01-03-2016"}
      it 'returns a date' do
        expect(DateParser.parse(date)).to be_an_instance_of(DateLibrary)
      end
    end
    context 'with an invalid date format' do
    end
  end
end
