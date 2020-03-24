require 'test_helper'

class CreatetaskControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get createtask_index_url
    assert_response :success
  end

end
