require_relative './drone_delivery'

class CommandCenter
  attr_accessor :drone_status, :parcel_status

  def self.pick_parcel_and_init_delivery(parcel, drone_name, parking_slot, status)
    if status == "Parked"
      drone = Drone.new(drone_name, parking_slot, status)
      @parcel_status = "#{drone_name} is out for Delivery"
      drone.pick_up(parcel, @parcel_status)
      @drone_status = DroneDelivery::DRONE_STATUS[1]
    end
  end

  def self.drone_current_status(status)
    @drone_status = status
  end

  def self.unloaded_pacakge(status)
    @parcel_status = status
  end
end