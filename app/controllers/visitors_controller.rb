class VisitorsController < ApplicationController

  def index
    @courses = Course.all
  end

end
