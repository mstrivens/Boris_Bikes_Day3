class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
     if @bikes.length == 0
       raise "No bikes available"
     else
       @bikes.pop
    end
  end

  def dock_bike(bike)
    if @bikes.length < 20
      @bikes << bike
    else
      raise ("No space available")
    end
  end

end

class Bike
  def working?
    true
  end
end
