class HomeController < ApplicationController
  
  before_action :get_all_event

  def index
  end

  def get_json_event
    if params[:pengisi].present?
      render :json => {:venues => Event.where("pengisi LIKE '%#{params[:pengisi]}%'")}
    elsif params[:hari].present?
      render :json => {:venues => Event.where("hari LIKE '%#{params[:hari]}%'")}              
    elsif params[:tanggal].present?
      render :json => {:venues => Event.where("tanggal LIKE '%#{params[:tanggal]}%'")}              
    elsif params[:lokasi].present?
      render :json => {:venues => Event.where("lokasi LIKE '%#{params[:lokasi]}%'")}
    else
      render :json => {:venues => Event.all}
    end
  end
  
  private
  def get_all_event
  	@events = Event.all
  end
end
