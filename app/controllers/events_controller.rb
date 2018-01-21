class EventsController < ApplicationController

  def index
    @events = Event.order('created_at DESC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "event added!"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def show
  	@event = Event.find_by_id(params[:id])
    @gmap = GMaps.new(div: '#map', lat: @event.latitude, lng: @event.longitude, zoom: 20)    
    @gmap.addMarker(
     lat: @event.latitude,
     lng: @event.longitude,
     title: 'Marker with InfoWindow',
     infoWindow: {
       content: "<p>#{@event.judul_kajian}<br /> #{@event.pengisi}</p>"
     })
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.update_attributes(event_params)
    redirect_to action: "index"
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:judul_kajian, :pengisi, :hari, :tanggal, :jam_mulai, :jam_selesai, :lokasi, :kota, :cp, :cp_no_telpon, :latitude, :longtitude)
  end
end
