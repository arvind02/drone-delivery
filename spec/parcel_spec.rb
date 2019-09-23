RSpec.describe Parcel do
	before(:each) do 
      @parcel_class = Parcel.new(1, {longitude: 20, latitude: 40}, {longitude: 40, latitude: 42}) 
    end

    it 'should have an initial data' do 
      expect(@parcel_class).to_not be_nil
      @parcel_class.parcel_id = 10
      @parcel_class.location = {longitude: 50, latitude: 55}
      @parcel_class.destination = {longitude: 70, latitude: 80} 
   end

end