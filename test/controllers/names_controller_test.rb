require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  setup do
    @name = names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name" do
    assert_difference('Name.count') do
      post :create, name: { country: @name.country, description: @name.description, difficulty: @name.difficulty, eating_qtty: @name.eating_qtty, ingredients: @name.ingredients, location: @name.location, ocassion: @name.ocassion, picture: @name.picture, prep_time: @name.prep_time, rating: @name.rating, tips: @name.tips, type: @name.type, video: @name.video }
    end

    assert_redirected_to name_path(assigns(:name))
  end

  test "should show name" do
    get :show, id: @name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name
    assert_response :success
  end

  test "should update name" do
    patch :update, id: @name, name: { country: @name.country, description: @name.description, difficulty: @name.difficulty, eating_qtty: @name.eating_qtty, ingredients: @name.ingredients, location: @name.location, ocassion: @name.ocassion, picture: @name.picture, prep_time: @name.prep_time, rating: @name.rating, tips: @name.tips, type: @name.type, video: @name.video }
    assert_redirected_to name_path(assigns(:name))
  end

  test "should destroy name" do
    assert_difference('Name.count', -1) do
      delete :destroy, id: @name
    end

    assert_redirected_to names_path
  end
end
