require "test_helper"

class RenterMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get renter_menu_index_url
    assert_response :success
  end
end
