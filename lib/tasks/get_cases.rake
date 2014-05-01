require 'net/http'

desc "importing case data from 311"
task :get_cases => :environment do
  uri =  URI("http://data.sfgov.org/resource/vw6y-z8j6.json")
  request = Net::HTTP.get(uri)
  data = JSON.parse(request)
  data.each do |record|
  	c = Case311.find_or_initialize_by_id(record["case_id"])
    c.needs_recoding = record["point"]["needs_recoding"]
    c.longitude = record["point"]["longitude"]
    c.latitude = record["point"]["latitude"]
    c.category = record["category"]
    c.request_details = record["request_details"]
    c.source = record["source"]
    c.address = record["address"]
    c.request_type = record["request_type"]
    c.status = record["status"]
    c.updated = record["updated"]
    c.media_url = record["media_url"] ? record["media_url"]["url"] : ''
    c.closed = record["closed"] ? record["closed"] : ''
    c.neighborhood = record["neighborhood"]
    c.supervisor_district = record["supervisor_district"]
    c.responsible_agency = record["responsible_agency"]
    c.opened = record["opened"]
    c.save
  end
end