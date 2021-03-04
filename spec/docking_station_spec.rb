require "docking_station"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'docks bike' do
    expect(subject).to respond_to(:dock_bike)
  end

   it 'shows bike' do
     expect(subject.dock_bike(:bike)).to eq(:bike)
   end
end

# As a member of the public
# So I can return bikes I've hired
# I want to dock my bike at the docking station

# As a member of the public
# So I can decide whether to use the docking station
# I want to see a bike that has been docked
