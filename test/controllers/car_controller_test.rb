require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_index_url
    assert_response :success
  end

  test "should get show" do
    get car_show_url
    assert_response :success
  end

  test "should get list" do
    get car_list_url
    assert_response :success
  end

end
