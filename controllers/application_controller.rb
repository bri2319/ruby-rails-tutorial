class ApplicationController < ActionController::Base
  before_action :load_trips
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def load_trips
    @trips = Trip.all
  end
end
