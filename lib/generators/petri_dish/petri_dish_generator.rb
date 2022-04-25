class PetriDishGenerator < Rails::Generators::NamedBase
  # source_root: returns the path to the source root of this generator, usin
  # File: File.dirname(__FILE__)
  # converst a path name to an absolute pathname. 
  source_root File.expand_path("templates", __dir__)

  # def generate_init 
  #   generate_petri_dish_initializer
  # end

  private 

  def generate_petri_dish_initializer
    # copy_file methods copies the file from the source_root to the destination, first argument is the file name, second is the destination
    # if extention file.rb gives problems, we can use .templete
    copy_file 'petri_dish_generator.rb', 'app/config/initializers/petri'
  end

end
