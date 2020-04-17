# links to the docking station file, where the class for DockingStation is
require 'docking_station'

#create a new test for any class of DockingStation
describe DockingStation do

  #test 1 - new instances respond to release_bike method
  it { expect(DockingStation.new).to respond_to(:release_bike)}

  #test 2 - new instances of bike, methods to be true
  it "docking station releases working bike" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to be true
  end

  #test 3 - new dock method test
  it "dock method exists in Docking Station class" do 
    expect(subject).to respond_to(:dock)
  end 

  #test 4 - dock takes ones argument 
  it "dock method takes one argument" do 
    expect(subject).to respond_to(:dock).with(1).argument
  end 

  #test 5 - station responds to bike available method
  it "dock method exists in Docking Station class" do
    expect(subject).to respond_to(:bike)
  end

  #test 6 - dock method returns bike
    it "dock method returns bike" do 
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end 

  #test 7 - bike method returns bike
    it "bike method returns bike" do
      bike = Bike.new
      subject.dock(bike) 
      expect(subject.bike).to eq bike
    end 
end