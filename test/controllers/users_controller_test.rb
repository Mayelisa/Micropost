require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { description: @user.description, email: @user.email, location: @user.location, name: @user.name,:ide @user.id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, ide: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, ide: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, ide: @user, user: { description: @user.description, email: @user.email, location: @user.location, name: @user.name, :ide @user.id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, ide: @user
    end

    assert_redirected_to users_path
  end
end
