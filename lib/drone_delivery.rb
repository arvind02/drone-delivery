require "drone_delivery/version"

require_relative './command_center'
require_relative './warehouse'
require_relative './parcel'
require_relative './drone'


module DroneDelivery
	
	DRONE_STATUS = ["Parked", "Delivering", "Delivered"]
	
	class Code
	  def start_delivery
	  	begin
		    parcel = Parcel.new(100, { longitude: 50, latitude: 55 } , { longitude: 60, latitude: 65 })
		    Warehouse.prepare_parcel
		    Warehouse.add_parcel(parcel)
		    CommandCenter.pick_parcel_and_init_delivery(parcel, "Drono_100", { longitude: 40, latitude: 45 }, DRONE_STATUS[0])
	  	rescue Exception
	  		puts "Hey, Seems like drone needs some tecnical assistance before starting delivery !!"
	  	end
	  end
	end

end
