require "petri_dish/specimens/request"
require "petri_dish/specimens/query"

module PetriDish
  class << self
    attr_accessor :request_specimen, :query_specimen

    def configure
      yield self
      _process_configuration
    end

    def configure_request_specimen
      PetriDish::Specimens::Request.prepare_slide
    end

    def configure_query_specimen
      PetriDish::Specimens::Query.prepare_slide
    end

    private

    def _process_configuration
      instance_variables.each do |ivar|
        if instance_variable_get(ivar)
          method_name = "configure_" + ivar.slice(1..-1)
          send(method_name)
        end
      end
    end
  end
end
