class PetriDish::QuerySpecimen < ApplicationRecord
  def self.prepare_slide(args)
    data = args.extract_options!
    create!(data)
  end
end
