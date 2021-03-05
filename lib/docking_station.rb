class DockingStation

DEFAULT_CAPACITY = 20
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
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
  def working?
    true
  end
end
