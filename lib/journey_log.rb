class JourneyLog
  def initialize journey_klass:
    @journey_klass = journey_klass
    @current_journey = nil
  end

  def start_journey station
    @current_journey = journey_klass.new(station)
  end

  def exit_journey station
    current_journey.exit_journey(station)
  end

  def current_journey
    @current_journey
  end
end