require 'test_helper'

class TaskviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get taskview_index_url
    assert_response :success
  end

end
