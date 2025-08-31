class TripsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show]
  before_action :set_trip, only: %i[ show edit update destroy]




  def index
    @trips = Trip.all
  end

  def show
    # @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
      if @trip.save
        redirect_to @trip
      else
        render :new, status: :unprocessable_entity
      end
    end

  def edit
    # @trip = Trip.find(params[:id])
  end

  def update
    # @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render :edit, status: :unprocessable_entity
    end
  end

 def destroy
  @trip.destroy
  redirect_to :back
end

private
      def set_trip
        @trip = Trip.find(params[:id])
      end
      def trip_params
        params.expect(trip: [ :name, :description, :featured_image ])
      end
end
