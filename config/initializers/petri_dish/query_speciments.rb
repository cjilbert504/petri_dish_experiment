ActiveSupport::Notifications.subscribe "sql.active_record" do |*args|
  PetriDish::QuerySpecimen.prepare_slide(args)
end
