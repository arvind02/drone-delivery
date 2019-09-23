class Parcel
  attr_accessor :parcel_id, :location, :destination

  def initialize(parcel_id, location, destination)
    @parcel_id = parcel_id
    @location = location
    @destination = destination
  end
end