require 'test_helper'

class LandpagesControllerTest < ActionController::TestCase
  setup do
    @landpage = landpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landpage" do
    assert_difference('Landpage.count') do
      post :create, landpage: {  }
    end

    assert_redirected_to landpage_path(assigns(:landpage))
  end

  test "should show landpage" do
    get :show, id: @landpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landpage
    assert_response :success
  end

  test "should update landpage" do
    patch :update, id: @landpage, landpage: {  }
    assert_redirected_to landpage_path(assigns(:landpage))
  end

  test "should destroy landpage" do
    assert_difference('Landpage.count', -1) do
      delete :destroy, id: @landpage
    end

    assert_redirected_to landpages_path
  end
end
