require 'test_helper'

class BestEversControllerTest < ActionController::TestCase
  setup do
    @best_ever = best_evers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:best_evers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create best_ever" do
    assert_difference('BestEver.count') do
      post :create, best_ever: { artist: @best_ever.artist, comment: @best_ever.comment, song: @best_ever.song, user: @best_ever.user }
    end

    assert_redirected_to best_ever_path(assigns(:best_ever))
  end

  test "should show best_ever" do
    get :show, id: @best_ever
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @best_ever
    assert_response :success
  end

  test "should update best_ever" do
    patch :update, id: @best_ever, best_ever: { artist: @best_ever.artist, comment: @best_ever.comment, song: @best_ever.song, user: @best_ever.user }
    assert_redirected_to best_ever_path(assigns(:best_ever))
  end

  test "should destroy best_ever" do
    assert_difference('BestEver.count', -1) do
      delete :destroy, id: @best_ever
    end

    assert_redirected_to best_evers_path
  end
end
