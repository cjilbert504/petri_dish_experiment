ActiveSupport::Notifications.subscribe "process_action.action_controller" do |*args|
  PetriDish::RequestSpecimen.prepare_slide(args)
end
