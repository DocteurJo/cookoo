require 'test_helper'

class CooksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cooks_show_url
    assert_response :success
  end

end
