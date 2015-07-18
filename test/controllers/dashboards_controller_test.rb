require "test_helper"

class DashboardsControllerTest < ActionController::TestCase
  def dashboard
    @dashboard ||= dashboards :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboards)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Dashboard.count") do
      post :create, dashboard: { total_count: dashboard.total_count, user_id: dashboard.user_id, user_id: dashboard.user_id, website: dashboard.website }
    end

    assert_redirected_to dashboard_path(assigns(:dashboard))
  end

  def test_show
    get :show, id: dashboard
    assert_response :success
  end

  def test_edit
    get :edit, id: dashboard
    assert_response :success
  end

  def test_update
    put :update, id: dashboard, dashboard: { total_count: dashboard.total_count, user_id: dashboard.user_id, user_id: dashboard.user_id, website: dashboard.website }
    assert_redirected_to dashboard_path(assigns(:dashboard))
  end

  def test_destroy
    assert_difference("Dashboard.count", -1) do
      delete :destroy, id: dashboard
    end

    assert_redirected_to dashboards_path
  end
end
