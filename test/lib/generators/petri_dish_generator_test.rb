require "test_helper"
require "generators/petri_dish/petri_dish_generator"

class PetriDishGeneratorTest < Rails::Generators::TestCase
  tests PetriDishGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
