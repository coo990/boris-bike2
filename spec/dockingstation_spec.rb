require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bikes.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
      it 'raises an error when full' do
        20.times { subject.dock Bikes.new }
        expect { subject.dock Bikes.new }.to raise_error 'Dock is full'
    end

    it 'docks something' do
      bike = Bikes.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returns docked bikes' do
      bike = Bikes.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end
end