class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []

  end

  def drive
    return "Brum Brum"
  end

  def passenger_count
    return @passengers.count()
  end

  def pick_up_passenger(passenger)
    return @passengers << passenger
  end

  def drop_off_passenger(passenger)
    return @passengers.delete(passenger)

  end

  def at_destination
    @passengers.clear

  end
end
