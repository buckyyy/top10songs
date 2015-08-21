require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get top10" do
    get :top10
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
