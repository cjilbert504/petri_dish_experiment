module PetriDish
  class RequestSpecimenGenerator < Rails::Generators::Base
    def create_initializer_file
      create_file "config/initializers/petri_dish.rb",
      <<~END
      ActiveSupport::Notifications.subscribe "process_action.action_controller" do |*args|
        PetriDish::RequestSpecimen.prepare_slide(args)
      end
      END
    end
  end
end
