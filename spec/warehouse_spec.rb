RSpec.describe Warehouse do
	# before(:each) do 
 #      @warehouse_class = Warehouse.new 
 #    end

    it 'should have an initial blank parcel array container' do 
      expect(Warehouse.prepare_parcel).to eq([])
   	end

   	it 'should show if we can add parcel data' do 
   	  parcel1 = double('parcel')
   	  allow(parcel1).to receive(:id) {10}
   	  allow(parcel1).to receive(:location) {"location"}
   	  allow(parcel1).to receive(:destination) {"destination"}

      ware_house = Warehouse.add_parcel(parcel1) 
      expect(ware_house[0]).to be_truthy 
   	end

end