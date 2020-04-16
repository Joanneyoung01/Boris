require 'docking_station'

describe DockingStation do

  it { expect(DockingStation.new).to respond_to(:release_bike)}

  it "docking station releases working bike" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to be true
  end

end

#Add a test to your DockingStation specification that
#a) gets a bike, and then b) expects the bike to be working
