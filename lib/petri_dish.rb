require "petri_dish/specimens/request"
require "petri_dish/specimens/query"

module PetriDish
  class << self
    attr_accessor :request_specimen, :query_specimen

    def configure
      yield self
      process_configuration
    end

    def configure_request_specimen
      PetriDish::Specimens::Request
    end

    def configure_query_specimen
      PetriDish::Specimens::Query
    end

    private

    def process_configuration
      instance_variables.each do |ivar|
        if instance_variable_get(ivar)
          method_name = "configure_" + ivar.slice(1..-1)
          klass = send(method_name)
          klass.prepare_slide
        end
      end
    end
  end
end
