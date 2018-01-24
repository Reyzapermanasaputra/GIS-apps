class RouteMapsController < ApplicationController
  def index
  end

  def show
  end

  def show
  	@event = Event.find_by_id(params[:id])
  	@map = GMaps.new(div: '#map', lat: @event.latitude, lng: @event.longitude, zoom: 20)    
    @map.addMarker(
     lat: @event.latitude,
     lng: @event.longitude,
     title: 'Marker with InfoWindow',
     infoWindow: {
       content: "<p>#{@event.judul_kajian}<br /> #{@event.pengisi}</p>"
     })
  end
end
