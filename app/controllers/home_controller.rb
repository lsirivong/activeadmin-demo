class HomeController < ApplicationController

  def index
    @event = Event.last
    @teams = Team.all
  end
end

