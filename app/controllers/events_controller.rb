class EventsController < ApplicationController

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
    @event = Event.new(
      'start_date' => params[:start_date],
      'duration' => params[:duration],
      'title' => params[:title],
      'description' => params[:description],
      'price' => params[:price],
      'location' => params[:location],
      'admin_id' => current_user.id)

    if @event.save
      redirect_to event_path(@event.id)
    else
      render 'new'
    end
  end
end
