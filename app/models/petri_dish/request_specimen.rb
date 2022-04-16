class PetriDish::RequestSpecimen < ApplicationRecord
  def self.prepare_slide(args)
    data = args.extract_options!
    create!(data) if !data[:path].include?("petri_dish")
  end
end
