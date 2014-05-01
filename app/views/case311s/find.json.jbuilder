json.ignore_nil! 

json.array! @all_cases do |record|
	json.point do
		json.needs_recoding record.needs_recoding
		json.longitude record.longitude
		json.latitude record.latitude
	end

    json.category record.category
  	json.request_details record.request_details
  	json.source record.source 
	json.address record.address 
	json.request_type record.request_type 
	json.status record.status 
	json.updated record.updated

	if !record.media_url.blank?
		json.media_url do
	    	json.url record.media_url
	  	end
	end

	json.neighborhood record.neighborhood 
	json.case_id record.id
	json.closed record.closed
	json.supervisor_district record.supervisor_district 
	json.responsible_agency record.responsible_agency 
	json.opened record.opened 
end


