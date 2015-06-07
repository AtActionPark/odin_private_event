class EventsController < ApplicationController


  def new
    redirect_to root_path if !signed_in?
  end

  def create
    @event = current_user.events.build(events_params)
    @event.user_id = current_user.id
    @event.save
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
    @upcoming_events = Event.upcoming
    @past_events = Event.past
  end

  private
    def events_params
      params.require(:event).permit(:name, :location, :date)
    end
end
