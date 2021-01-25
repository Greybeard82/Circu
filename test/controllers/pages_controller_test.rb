require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get calc" do
    get pages_calc_url
    assert_response :success
  end

end
