require "rails/generators/base"

module PetriDish
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_initializer_file
        create_file "config/initializers/petri_dish.rb",
        <<~END
        require "petri_dish"

        PetriDish.configure do |config|
          config.request_specimen = true
          config.query_specimen = true
        end
        END
      end
    end
  end
end
