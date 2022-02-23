class EventsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]

  def index
    @event = Event.all.sample
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = Event.new(
      'start_date' => params[:start_date],
      'duration' => params[:duration],
      'title' => params[:title],
      'description' => params[:description],
      'price' => params[:price],
      'location' => params[:location],
      'admin_id' => @user.id)
    if @event.save
      redirect_to event_path(@event.id)
    else
      render 'new'
    end
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
  end

end
