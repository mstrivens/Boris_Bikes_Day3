class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :bikes
attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity

  end

  def release_bike
    raise "No bikes available" if empty?
    bike = @bikes.last
    bike_status = bike.status
    p  raise "Bike unavailable" unless (bike_status == true)
    @bikes.pop
  end

  def dock_bike(bike)
    raise "No space available" if full?
    @bikes << bike
  end

  private

    def empty?
      @bikes.length == 0
    end

    def full?
      @bikes.length >= DEFAULT_CAPACITY
    end

end

class Bike

attr_accessor :status

  def working?
    @status == true
  end
end
