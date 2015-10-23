require 'journey_log'

describe JourneyLog do
  let(:journey) {double :journey}
  let(:journey_klass) {double :journey_klass, new: journey}
  let(:entry_station) {double :station}
  let(:exit_station) {double :station}

  subject( :journey_log) {described_class.new(journey_klass: journey_klass)}

  describe '#start_journey' do
    it { is_expected.to respond_to( :start_journey).with(1).argument}
  end

  describe '#exit_journey' do
    it { is_expected.to respond_to( :exit_journey).with(1).argument}

    it 'returns the exit station on #exit_journey'  do
      allow (journey).to receive(:exit_journey).with(exit_station).and_return(exit_station)
      expect(journey_log.exit_journey(exit_station)).to eq(exit_station)
    end
  end
end
