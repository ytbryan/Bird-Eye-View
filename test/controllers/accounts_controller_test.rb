require "test_helper"

class AccountsControllerTest < ActionController::TestCase
  def account
    @account ||= accounts :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Account.count") do
      post :create, account: { type: account.type, user_id: account.user_id, user_id: account.user_id }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  def test_show
    get :show, id: account
    assert_response :success
  end

  def test_edit
    get :edit, id: account
    assert_response :success
  end

  def test_update
    put :update, id: account, account: { type: account.type, user_id: account.user_id, user_id: account.user_id }
    assert_redirected_to account_path(assigns(:account))
  end

  def test_destroy
    assert_difference("Account.count", -1) do
      delete :destroy, id: account
    end

    assert_redirected_to accounts_path
  end
end
