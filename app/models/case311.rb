class Case311 < ActiveRecord::Base
	  acts_as_mappable :default_units => :miles, 
                   :default_formula => :sphere, 
                   :distance_field_name => :distance,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

	def self.status(s)
		where("lower(status) = lower(?)", s)
	end

	def self.since(timestamp)
		where("strftime('%s', opened) >= ?", timestamp)
	end

	def self.source(src)
		where("lower(source) = lower(?)", src)
	end

	def self.near(lat, long)
		within(0.15, :origin => [lat, long])
	end

end
