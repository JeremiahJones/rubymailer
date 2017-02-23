require 'test_helper'

class PoopsticksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poopstick = poopsticks(:one)
  end

  test "should get index" do
    get poopsticks_url
    assert_response :success
  end

  test "should get new" do
    get new_poopstick_url
    assert_response :success
  end

  test "should create poopstick" do
    assert_difference('Poopstick.count') do
      post poopsticks_url, params: { poopstick: { age: @poopstick.age, name: @poopstick.name } }
    end

    assert_redirected_to poopstick_url(Poopstick.last)
  end

  test "should show poopstick" do
    get poopstick_url(@poopstick)
    assert_response :success
  end

  test "should get edit" do
    get edit_poopstick_url(@poopstick)
    assert_response :success
  end

  test "should update poopstick" do
    patch poopstick_url(@poopstick), params: { poopstick: { age: @poopstick.age, name: @poopstick.name } }
    assert_redirected_to poopstick_url(@poopstick)
  end

  test "should destroy poopstick" do
    assert_difference('Poopstick.count', -1) do
      delete poopstick_url(@poopstick)
    end

    assert_redirected_to poopsticks_url
  end
end
