class Case311 < ActiveRecord::Base

	def self.status(s)
		where("lower(status) = lower(?)", s)
	end

	def self.since(timestamp)
		where("strftime('%s', opened) >= ?", timestamp)
	end

	def self.source(src)
		where("lower(source) = lower(?)", src)
	end

end
