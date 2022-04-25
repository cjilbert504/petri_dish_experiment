module PetriDish
  class QuerySpecimenGenerator < Rails::Generators::Base
    # create_inizializer_file method creates a file named config/initializers/petri_dish.rb if file doesn't exist, otherwise it appends to it.
    #content: comes from rails active support instrumentation instrumentation documentation. no templet is used.
    def create_initializer_file
      destination_file = "config/initializers/petri_dish/query_speciments.rb"
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
