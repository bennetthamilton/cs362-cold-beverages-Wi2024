class WaterReservoir

  attr_reader :capacity
  attr_accessor :volume

  def initialize(capacity = 10, initial_water_volume = 0)
    @capacity = capacity
    @volume = initial_water_volume
  end

  def empty?
    volume == 0
  end

  def fill
    self.volume = capacity
  end

  def drain(volume_amount)
    remaining_volume = [volume_amount, volume].min
    self.volume -= remaining_volume
  end

end
