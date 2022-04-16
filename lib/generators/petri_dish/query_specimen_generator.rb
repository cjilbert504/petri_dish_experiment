module PetriDish
  class QuerySpecimenGenerator < Rails::Generators::Base
    def create_initializer_file
      destination_file = "config/initializers/petri_dish.rb"
      contents = <<~END
        ActiveSupport::Notifications.subscribe "sql.active_record" do |*args|
          PetriDish::QuerySpecimen.prepare_slide(args)
        end
      END

      if File.exist?(destination_file)
        inject_into_file destination_file, :after => "end\n" do
          "\n#{contents}"
        end
      else
        create_file destination_file, contents
      end
    end
  end
end
