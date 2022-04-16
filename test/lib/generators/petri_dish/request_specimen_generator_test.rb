require "test_helper"
require "generators/petri_dish/request_specimen/request_specimen_generator"

class PetriDish::RequestSpecimenGeneratorTest < Rails::Generators::TestCase
  tests PetriDish::RequestSpecimenGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
