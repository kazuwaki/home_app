class EventsController < ApplicationController
  def create
    event = Event.new(event_params)
    event.save
    redirect_to root_path
  end

  private
    def event_params
      params.require(:event).permit(:title, :content, :start_time)
    end
end
