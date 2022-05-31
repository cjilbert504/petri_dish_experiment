class PetriDish::QuerySpecimensController < ApplicationController
  def index
    @query_specimens = PetriDish::QuerySpecimen.all
  end

  def show
  end
end
