require "test_helper"

class PlatillosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get platillos_index_url
    assert_response :success
  end
end
