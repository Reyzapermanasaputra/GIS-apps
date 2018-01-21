class Event < ApplicationRecord
	geocoded_by :lokasi
	after_validation :geocode, if: -> (obj){obj.lokasi.present? and obj.lokasi_changed?}
	
	def self.search(pengisi, waktu, lokasi)
		where("pengisi LIKE '%?%' OR waktu LIKE '%?%'' OR lokasi '%?%'", pengisi, waktu, lokasi)
	end
end
