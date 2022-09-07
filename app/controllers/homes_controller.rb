class HomesController < ApplicationController
  def top
    @events = Event.all
    @event = Event.new
  end
end
