require 'test_helper'

class RecipeesControllerTest < ActionController::TestCase
  setup do
    @recipee = recipees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipee" do
    assert_difference('Recipee.count') do
      post :create, recipee: { country: @recipee.country, description: @recipee.description, difficulty: @recipee.difficulty, eating_qtty: @recipee.eating_qtty, ingredients: @recipee.ingredients, location: @recipee.location, name: @recipee.name, ocassion: @recipee.ocassion, picture: @recipee.picture, prep_time: @recipee.prep_time, rating: @recipee.rating, tips: @recipee.tips, type: @recipee.type, video: @recipee.video }
    end

    assert_redirected_to recipee_path(assigns(:recipee))
  end

  test "should show recipee" do
    get :show, id: @recipee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipee
    assert_response :success
  end

  test "should update recipee" do
    patch :update, id: @recipee, recipee: { country: @recipee.country, description: @recipee.description, difficulty: @recipee.difficulty, eating_qtty: @recipee.eating_qtty, ingredients: @recipee.ingredients, location: @recipee.location, name: @recipee.name, ocassion: @recipee.ocassion, picture: @recipee.picture, prep_time: @recipee.prep_time, rating: @recipee.rating, tips: @recipee.tips, type: @recipee.type, video: @recipee.video }
    assert_redirected_to recipee_path(assigns(:recipee))
  end

  test "should destroy recipee" do
    assert_difference('Recipee.count', -1) do
      delete :destroy, id: @recipee
    end

    assert_redirected_to recipees_path
  end
end
