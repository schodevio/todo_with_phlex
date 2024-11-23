class EventsController < ApplicationController
  def index
    render Events::IndexView
  end

  def new
    render Events::NewView.new(Event.new)
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path
    else
      render Events::NewView.new(@event)
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :slug, :starts_at, :ends_at)
  end
end
