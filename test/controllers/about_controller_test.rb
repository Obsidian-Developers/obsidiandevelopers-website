require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get our-work" do
    get :our-work
    assert_response :success
  end

  test "should get tutorials" do
    get :tutorials
    assert_response :success
  end

  test "should get apply" do
    get :apply
    assert_response :success
  end

end
