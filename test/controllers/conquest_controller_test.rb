require 'test_helper'

class ConquestControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
