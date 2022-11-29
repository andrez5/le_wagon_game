require "test_helper"

class ScenesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scenes_new_url
    assert_response :success
  end
end
