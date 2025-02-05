require "test_helper"

class RecsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recs_index_url
    assert_response :success
  end
end
