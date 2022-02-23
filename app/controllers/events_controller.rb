class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Gossip.new(
            title: params[:title],
            description: params[:description],
            location: params[:location],
            price: params[:price],
            start_date: params[:start_date],
            end_date: params[:start_date],
            duration: params[:duration])
      if @event.save
        redirect_to :controller => 'event', :action => 'show', id: @event.id
      else
        render :action => 'new'
      end
  end
end
