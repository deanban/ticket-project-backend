class Api::V1::EventsController < ApplicationController

def index
    @events = Event.all
    render json: @events, status: 200
  end


def show
@event = Event.find(params[:id])
render json: @event, status: 200
end
# def create
#     @event = Event.create(event_params)
#     render json: @event, status: 201
#   end


private
def event_params
    params.permit(:name, :event_type, :state, :zip, :price)
  end

end
