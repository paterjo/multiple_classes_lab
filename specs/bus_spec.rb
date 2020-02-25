require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, 'Ocean Terminal' )
    @passenger1 = Person.new("John Smith", 25)
    @passenger2 = Person.new("Eddie Jones", 37)
  end

  def test_bus_route
    assert_equal(22, @bus1.route)
  end

  def test_bus_destination
    assert_equal('Ocean Terminal', @bus1.destination)
  end

  def test_bus_drive
    assert_equal('Brum Brum', @bus1.drive)

  end

  def test_empty_bus_at_start
    assert_equal(0, @bus1.passenger_count)

  end

  def test_pick_up_passenger
    @bus1.pick_up_passenger(@passenger1)
    assert_equal(1, @bus1.passenger_count)
  end

  def test_drop_off_passenger
    @bus1.pick_up_passenger(@passenger1)
    @bus1.pick_up_passenger(@passenger2)
    @bus1.drop_off_passenger(@passenger2)
    assert_equal(1, @bus1.passenger_count)

  end

  def test_drop_off_all_passengers
    @bus1.pick_up_passenger(@passenger1)
    @bus1.pick_up_passenger(@passenger2)
    @bus1.at_destination()
    assert_equal(0, @bus1.passenger_count)

  end


end
