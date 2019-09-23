RSpec.describe Drone do
	before(:each) do 
      @drone_class = Drone.new("drono", {longitude: 50, latitude: 55}, "Parked")
    end

    it 'should have an initial drone data' do 
      expect(@drone_class).to_not be_nil
    end

    
end