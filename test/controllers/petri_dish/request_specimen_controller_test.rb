require "test_helper"

class PetriDish::RequestSpecimenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get petri_dish_request_specimen_index_url
    assert_response :success
  end

  test "should get show" do
    get petri_dish_request_specimen_show_url
    assert_response :success
  end
end
