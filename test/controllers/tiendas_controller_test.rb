require "test_helper"

class TiendasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tiendas_index_url
    assert_response :success
  end
end
