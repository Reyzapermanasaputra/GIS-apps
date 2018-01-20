class HomeController < ApplicationController
  before_action :get_all_event
  def index
  	@map = GMaps.new(div: '#map', lat: @events.last.latitude, lng: @events.last.longitude)  	
  	@events.all.each do |event|
      @map.addMarker(
       lat: event.latitude,
       lng: event.longitude,
       title: 'Marker with InfoWindow',
       infoWindow: {
         content: "<p>#{event.judul_kajian}<br /> #{event.pengisi}</p>"
       })
  	end
  end
  
  private
  def get_all_event
  	@events = Event.all
  end
end
