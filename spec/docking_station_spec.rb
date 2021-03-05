require "docking_station"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    describe '#release_bikes' do
      it 'releases a bike' do
      bike = Bike.new
      bike.status = true
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
  end

    it 'docks bike' do
    expect(subject).to respond_to(:dock_bike)
  end

   it 'shows a bike which has been docked is in the dock' do
     bike = Bike.new
     subject.dock_bike(bike)
     expect(subject.bikes).to include(bike)
   end

   it "doesn't release bike when bike not available" do
     expect{subject.release_bike}.to raise_error("No bikes available")
   end

   it "doesn't accept more than DEFAULT_CAPACITY bikes" do
     bike = Bike.new
     DockingStation::DEFAULT_CAPACITY.times {
     subject.dock_bike(bike) }
     expect{subject.dock_bike(bike)}.to raise_error("No space available")
   end

   it "sets a value for capacity of the dock" do
     dock = DockingStation.new(30)
     expect(dock.capacity).to eq(30)
   end

   it "sets a default capacity when capacity is not provided as an argument" do
    dock = DockingStation.new()
    expect(dock.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

  it "doesn't release a bike if not working" do
    bike = Bike.new
    bike.status = false
    subject.dock_bike(bike)
    expect{subject.release_bike}.to raise_error("Bike unavailable")
  end

end
