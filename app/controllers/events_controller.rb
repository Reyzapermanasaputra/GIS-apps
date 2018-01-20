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
    params.require(:event).permit(:judul_kajian, :pengisi, :hari, :tanggal, :lokasi, :kota, :cp, :cp_no_telpon, :latitude, :longtitude)
  end
end
