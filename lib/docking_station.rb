class DockingStation
  attr_accessor :bike
  def dock(bike)
    @bike = bike
  end
  def release_bike
    raise "no bikes available" unless @bike
    @bike
  end

end
class Bike
  def working?
    true
  end
end
