class Drone
	attr_accessor :name, :current_location, :destination, :parcel, :status, :parking_location

	def initialize(name, parking_slot, status)
		@name = name
		@current_location = parking_slot
		@parking_location = parking_slot
		@status = status
		puts "#{name} is ready"
	end

    #Pick parcel and leave for delivery
	def pick_up(parcel, parcel_status)
		@parcel = parcel
		@current_location = parcel.location
		@destination = parcel.destination
		puts "#{@name} has picked parcel id:#{parcel.parcel_id}"
		puts parcel_status
		leave_for_delivery(@destination)
	end

    #send signal and unload item
	def leave_for_delivery(order_address)
		@current_location = order_address
		puts "#{@name} is on the way..."
		signal_after_reach
		unload_item
	end

	def signal_after_reach
		puts "#{@name} reached destination" if @current_location == @destination
	end

    #Unload Item, Parcel Delivered status, Update drone status 
	def unload_item
		return if @current_location != @destination
		Warehouse.remove_parcel
		puts "Item has been delivered :)"
		CommandCenter.unloaded_pacakge(DroneDelivery::DRONE_STATUS[2])
		park_in_command_center
	end

    #Park drone to command center
	def park_in_command_center
		@current_location = @parking_location
		CommandCenter.drone_current_status(DroneDelivery::DRONE_STATUS[0])
		puts "Job Completed, #{@name} is ready for another delivery..!!"
	end
end