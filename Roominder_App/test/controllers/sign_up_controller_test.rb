require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get create_join" do
    get sign_up_create_join_url
    assert_response :success
  end

end
