class Event < ApplicationRecord
	geocoded_by :lokasi
	after_validation :geocode, if: -> (obj){obj.lokasi.present? and obj.lokasi_changed?}
end
