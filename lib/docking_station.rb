require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Dock is full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end