require "docking_station"

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'has a status attribute'do
    expect(subject).to respond_to :status
  end

  it 'has a status that can be changed' do
    bike = Bike.new
    bike.status = true
    expect(bike.status).to eq true
  end


end
