require_relative '../lib/meeting_rooms'

RSpec.describe 'Meeting Rooms' do
  context 'given correct time intervals' do
    it 'returns true' do
      intervals = [[7, 10], [2, 4]]
      
      expect(can_attend_meetings(intervals)).to eq(true)
    end
  end

  context 'given incorrect time intervals' do
    it 'returns false' do
      intervals = [[0, 30], [5, 10], [15, 20]]

      expect(can_attend_meetings(intervals)).to eq(false)
    end
  end
end
