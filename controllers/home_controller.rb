class HomeController < ApplicationController
allow_unauthenticated_access only: %i[ index ]

  def index
    @courses = Course.all
    end
end
