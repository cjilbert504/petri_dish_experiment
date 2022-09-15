module PetriDish 
  module Generators
    class ResourceGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def generate_init
        generate_resource
      end

      private     
      def generate_resource
        if PetriDish.request_specimen
          copy_file "request_specimens_controller_template.template", "app/controllers/petri_dish/request_specimens_controller.rb"
          # view template
          # route 
        end
        if PetriDish.query_specimen
          copy_file "query_specimens_controller_template.template", "app/controllers/petri_dish/query_specimens_controller.rb"
        end
      end
    end
  end
end