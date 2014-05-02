FactoryGirl.define do 
	factory :case311 do |f| 
		# f.id 400
		f.sequence(:id) { |n| "400#{n}" }
		f.needs_recoding false
		f.sequence(:longitude) { |n| "-122.4#{n}690905"}
		f.sequence(:latitude) { |n| "37.7911#{n}994"}
		f.category "Street and Sidewalk Cleaning"
		f.request_details "Furniture"
		f.sequence(:source) { |n| n%2 == 1 ? "Open311" : "Voice In"}
		f.address "Intersection of 26TH ST and HAMPSHIRE ST"
		f.request_type "Illegal_Dumping"
		f.sequence(:status) { |n| n%2 == 1 ? "open" : "closed"}
		f.updated "2014-04-27 13:19:00"
		f.media_url ""
		f.neighborhood "Mission"
		f.closed "2014-04-27 13:19:00"
		f.supervisor_district "9"
		f.responsible_agency "Recology_Abandoned"
		f.sequence(:opened) { |n2| "2014-04-#{n2} 12:41:00"}
		f.created_at "2014-05-01 15:41:39"
		f.updated_at "2014-05-01 15:41:39"
	end 
end 