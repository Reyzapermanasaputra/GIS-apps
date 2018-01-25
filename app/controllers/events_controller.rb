class EventsController < ApplicationController
  before_action :check_current_user, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @events = User.find_by_id(current_user.id).events
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
    @map = GMaps.new(div: '#map', lat: @event.latitude, lng: @event.longitude, zoom: 20)    
    @map.addMarker(
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

  def route_map
  end

  private

  def event_params
    params.require(:event).permit(:judul_kajian, :pengisi, :hari, :tanggal, :jam_mulai, :jam_selesai, :lokasi, :kota, :cp, :cp_no_telpon, :latitude, :longitude, :user_id)
  end
end
