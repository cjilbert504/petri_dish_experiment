ActiveSupport::Notifications.subscribe "process_action.action_controller" do |*args|
  PetriDish::RequestSpecimen.prepare_slide(args)
end

ActiveSupport::Notifications.subscribe "instantiation.active_record" do |*args|
  PetriDish::QuerySpecimen.prepare_slide(args)
end
