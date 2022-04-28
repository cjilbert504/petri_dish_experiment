class PetriDish::RequestSpecimensController < ApplicationController
  def index
    @request_specimens = PetriDish::QuerySpecimen.all
  end

  def show
  end
end
