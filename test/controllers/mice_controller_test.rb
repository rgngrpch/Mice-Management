require 'test_helper'

class MiceControllerTest < ActionController::TestCase
  setup do
    @mouse = mice(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mice)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mouse" do
    assert_difference('Mouse.count') do
      post :create, mouse: { age: @mouse.age, date_of_birth: @mouse.date_of_birth, genome: @mouse.genome, parent_information: @mouse.parent_information, sex: @mouse.sex, tag_number: @mouse.tag_number }
    end

    assert_redirected_to mouse_path(assigns(:mouse))
  end

  test "should show mouse" do
    get :show, id: @mouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mouse
    assert_response :success
  end

  test "should update mouse" do
    patch :update, id: @mouse, mouse: { age: @mouse.age, date_of_birth: @mouse.date_of_birth, genome: @mouse.genome, parent_information: @mouse.parent_information, sex: @mouse.sex, tag_number: @mouse.tag_number }
    assert_redirected_to mouse_path(assigns(:mouse))
  end

  test "should destroy mouse" do
    assert_difference('Mouse.count', -1) do
      delete :destroy, id: @mouse
    end

    assert_redirected_to mice_path
  end
end
