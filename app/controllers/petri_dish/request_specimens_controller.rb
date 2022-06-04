require "petri_dish/specimens/request"

class PetriDish::RequestSpecimensController < ApplicationController
  def index
    @request_specimens = PetriDish::Specimens::Request.all
  end

  def show
    specimens = PetriDish::Specimens::Request.all
    @request_specimen = specimens.find { |request_specimen| request_specimen.id.to_s == params[:id] }
  end
end
