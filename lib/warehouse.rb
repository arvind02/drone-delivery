class Warehouse
    attr_accessor :parcel_pack, :parcel

    #Initiate a blank parcel bag
    def self.prepare_parcel
        @parcel_pack = []
    end

    #Add content to parcel
    def self.add_parcel(parcel)
        @parcel_pack << parcel
    end
    
    #Remove parcel content from pack
    def self.remove_parcel
      @parcel_pack.clear
    end
end