require "test_helper"

class FrontPagesControllerTest < ActionController::TestCase
  def front_page
    @front_page ||= front_pages :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:front_pages)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("FrontPage.count") do
      post :create, front_page: {  }
    end

    assert_redirected_to front_page_path(assigns(:front_page))
  end

  def test_show
    get :show, id: front_page
    assert_response :success
  end

  def test_edit
    get :edit, id: front_page
    assert_response :success
  end

  def test_update
    put :update, id: front_page, front_page: {  }
    assert_redirected_to front_page_path(assigns(:front_page))
  end

  def test_destroy
    assert_difference("FrontPage.count", -1) do
      delete :destroy, id: front_page
    end

    assert_redirected_to front_pages_path
  end
end
