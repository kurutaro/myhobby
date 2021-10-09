require 'test_helper'

class MyCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_car = my_cars(:one)
  end

  test "should get index" do
    get my_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_my_car_url
    assert_response :success
  end

  test "should create my_car" do
    assert_difference('MyCar.count') do
      post my_cars_url, params: { my_car: { date: @my_car.date, description: @my_car.description, name: @my_car.name, user_id_id: @my_car.user_id_id } }
    end

    assert_redirected_to my_car_url(MyCar.last)
  end

  test "should show my_car" do
    get my_car_url(@my_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_car_url(@my_car)
    assert_response :success
  end

  test "should update my_car" do
    patch my_car_url(@my_car), params: { my_car: { date: @my_car.date, description: @my_car.description, name: @my_car.name, user_id_id: @my_car.user_id_id } }
    assert_redirected_to my_car_url(@my_car)
  end

  test "should destroy my_car" do
    assert_difference('MyCar.count', -1) do
      delete my_car_url(@my_car)
    end

    assert_redirected_to my_cars_url
  end
end
