require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end
  
  #it do
  #  expect(docking_station.release_bike).to eq(true)
  #end
end