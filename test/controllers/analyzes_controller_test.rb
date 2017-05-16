require 'test_helper'

class AnalyzesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get analyzes_new_url
    assert_response :success
  end

  test "should get create" do
    get analyzes_create_url
    assert_response :success
  end

end
