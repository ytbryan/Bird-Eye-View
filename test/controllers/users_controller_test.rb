require "test_helper"

class UsersControllerTest < ActionController::TestCase
  def user
    @user ||= users :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("User.count") do
      post :create, user: { email: user.email, first_name: user.first_name, last_name: user.last_name, password: user.password, username: user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  def test_show
    get :show, id: user
    assert_response :success
  end

  def test_edit
    get :edit, id: user
    assert_response :success
  end

  def test_update
    put :update, id: user, user: { email: user.email, first_name: user.first_name, last_name: user.last_name, password: user.password, username: user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  def test_destroy
    assert_difference("User.count", -1) do
      delete :destroy, id: user
    end

    assert_redirected_to users_path
  end
end
