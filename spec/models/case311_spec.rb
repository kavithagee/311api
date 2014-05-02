require 'spec_helper'

describe "#Case311" do
	before :each do
    	@case311 = FactoryGirl.create(:case311)
    end

	describe Case311 do 
		it "has a valid factory" do
			@case311.should be_valid
		end
		it "is invalid without a id" do
			FactoryGirl.build(:case311, id: nil, needs_recoding: false, longitude: nil, latitude: nil, category: "Street and Sidewalk Cleaning", request_details: "Furniture", source: "Voice In", address: "Intersection of 26TH ST and HAMPSHIRE ST", request_type: "Illegal_Dumping", status: "Closed", updated: "2014-04-27 13:19:00", media_url: "", neighborhood: "Mission", closed: "2014-04-27 13:19:00", supervisor_district: 9, responsible_agency: "Recology_Abandoned", opened: "2014-04-27 12:41:00", created_at: "2014-05-01 15:41:39", updated_at: "2014-05-01 15:41:39").should_not be_valid
		end
	end
 
end