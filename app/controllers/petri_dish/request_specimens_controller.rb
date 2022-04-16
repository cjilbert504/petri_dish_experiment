class PetriDish::RequestSpecimensController < ApplicationController
  def index
    @request_specimens = PetriDish::RequestSpecimen.all
  end

  def show
  end
end
